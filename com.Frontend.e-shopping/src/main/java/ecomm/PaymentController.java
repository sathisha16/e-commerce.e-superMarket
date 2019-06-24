package ecomm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {

	@RequestMapping("pay")
	public String gotoPament() {
		return "thankyou";
	}

}
