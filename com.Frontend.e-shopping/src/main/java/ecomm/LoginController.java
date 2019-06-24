package ecomm;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.DAO.ProductDao;
import com.model.Product;
@Controller
public class LoginController {
	
	@Autowired
	ProductDao productdao;
	

@RequestMapping("login")
public String getLogin()
{
	return "login";
}
@RequestMapping("/login_success")
public String gettargetadminpage(HttpSession session,Model m)
{
	String page=null;
	boolean loggedIn=true;

	String username=SecurityContextHolder.getContext().getAuthentication().getName();
	session.setAttribute("username", username);
	session.setAttribute("loggedIn",loggedIn);
	Collection<GrantedAuthority> authoritycollections=(Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
	for(GrantedAuthority role:authoritycollections)
	{
		if(role.getAuthority().equals("ROLE_ADMIN"))
		{
			List<Product> productlist =productdao.getProductDetails(); 
			System.out.println(productlist);
			m.addAttribute("productlist",productlist);
			page="productPage";
		}
		else if(role.getAuthority().equals("ROLE_USER"))
		{
			List<Product> productlist =productdao.getProductDetails(); 
			System.out.println(productlist);
			m.addAttribute("productlist",productlist);
			page="userProductPage";
		}
	}

	session.setAttribute("loggedinuser", username);
	session.setAttribute("loginstatus", true);
	return page;
}

}
