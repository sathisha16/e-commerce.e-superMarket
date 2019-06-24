package ecomm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {
	@RequestMapping("adminHeader")
	public String adminHeader() {
		System.out.println("admin is:: ::viewed");

		return "adminHeader";
	}

}
