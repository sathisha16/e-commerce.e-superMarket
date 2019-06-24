package ecomm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.DAO.ProductDao;
import com.model.Product;

@Controller
public class UserHomePageController {
	@Autowired
	ProductDao productdao;
	
	@RequestMapping("userHomePage2")
	public String getHomePage1(Model m) {
		System.out.println("home_page::Entered!!");
		List<Product> products = productdao.getProductDetails();
		m.addAttribute("productlist", products);
	
		System.out.println("product_List:: ::viewed");
		return "userHomePage2";
	}

}
