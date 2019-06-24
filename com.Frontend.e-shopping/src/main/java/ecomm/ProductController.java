package ecomm;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.DAO.CategoryDao;
import com.DAO.ProductDao;
import com.DAO.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SupplierDao supplierDao;

	

	//========================Product_Added=======================================**
	
	@RequestMapping("product")
	public String productget(Model m) {
		List<Product> p = productDao.getProductDetails();
		m.addAttribute("productlist", p);

		List<Category> categorylist=categoryDao.getCategoryDetails();
		m.addAttribute("categorylist", categorylist);
		System.out.println(categorylist);
		List<Supplier> s=supplierDao.getSupplierDetails();
		m.addAttribute("supplierlist",s);
		
		return "product";
	}

	@ModelAttribute("productattribute")
	public Product getProductObject() {
		
		return new Product();
	}

	@RequestMapping(value = "addproduct", method = RequestMethod.POST)
	public String addProduct(Product p, BindingResult result) {

		productDao.insertUpdateProduct(p);
		MultipartFile image=p.getProductimage();
		byte[] bt=new byte[(int) image.getSize()];
		try {
				InputStream is=image.getInputStream();is.read(bt);
				FileOutputStream fos=new FileOutputStream("E:\\eclipseWorkout\\project\\com.Frontend.e-shopping\\src\\main\\webapp\\resources\\images\\"+p.getProductid()+".jpg");
				fos.write(bt);
				fos.flush();
				System.out.println("products_is_ADDED");

			
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return "redirect:/product";
	
		
	}
	
	
	
	

	Product temp1=null;
	@RequestMapping("editproduct/{productid}")
	public String getEditUser(@PathVariable int productid ,Model m) {
		Product product=productDao.getProduct(productid);
		m.addAttribute("editproduct", product);
		temp1=product;
		System.out.println(product);
		return "redirect:/editproduct";
	}
	@RequestMapping("/editproduct")
	public String gotoEditProduct(Model m) {
		m.addAttribute("editproduct", temp1);
		System.out.println("going to edit page:: ::");
		return "editproduct";
	}
	@ModelAttribute("productedit")
	public Product getProductEdit() {
		System.out.println("get..productEdit()");
		
		return new Product();
	}
	@RequestMapping(value="updateproduct", method=RequestMethod.POST)
	public String getUpdateProduct(Product product) {
		productDao.insertUpdateProduct(product);
		System.out.println("product page is updated");
		return "redirect:/product";
	}
	@RequestMapping("deleteproduct/{productid}")
	public String deleteProduct(@PathVariable int productid) {
		System.out.println("deleted...? ---yes");
		Product product = productDao.getProduct(productid);
		productDao.deleteProduct(product);
		
		return "redirect:/product";
	}
	

	Product temp=null;
	
	@RequestMapping("ProductDesc/{productid}")
	public String viewedProduct(@PathVariable ("productid")int productid , Model m1) {
		System.out.println("-----------viewedProduct--------------");
		Product product = productDao.getProduct(productid);
		
		m1.addAttribute("productinfo",product);
		temp=product;
		return "redirect:/productDesc";
	}
	@RequestMapping("/productDesc")
	public String gotoProductDescPage(Model m1) {
		System.out.println("going to profuctDesc");
		m1.addAttribute("productinfo", temp);
		return "productDesc";
	}
	

	}

