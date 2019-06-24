package ecomm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.DAO.UserDetailsDao;
import com.model.Category;
import com.model.UserDetails;

@Controller
public class RegisterationController {
	@Autowired
	UserDetailsDao userdetaildao;
	
	@RequestMapping("signup")
	public String getRegisteration() {
		return "registration";
	}
	@ModelAttribute("userAttribute")
	public UserDetails details() {
		return new UserDetails();
				
	}
	@RequestMapping(value="adduser",method=RequestMethod.POST)
	public String addProduct(UserDetails userDetails) {
		userDetails.setEnabled(true);
        userDetails.setRole("ROLE_USER");
		userdetaildao.insertUpdateUserDetail(userDetails);
		System.out.println("userDetails is:: ::added");
		return "login";
	}
	

}
