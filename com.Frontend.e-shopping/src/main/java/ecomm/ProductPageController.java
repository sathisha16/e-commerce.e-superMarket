package ecomm;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.DAO.CategoryDao;
import com.DAO.ProductDao;
import com.model.Category;
import com.model.Product;

@Controller
public class ProductPageController {
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categorydao;
	
	
	  @RequestMapping("productPage") public String viewProduct(Model m) {
	  List<Product> products = productDao.getProductDetails();
	  m.addAttribute("productlist", products);
	  
	  System.out.println("product_List:: ::viewed"); return "productPage";
	  
	  }
	 
@Autowired
@RequestMapping("userProductPage")
public String usrPrdPage() {
	
	return "userProductPage";
}


}

