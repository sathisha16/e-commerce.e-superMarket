package ecomm;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
 import org.springframework.web.bind.annotation.PathVariable;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.RequestMethod;
 import org.springframework.web.bind.annotation.RequestParam;
 
 import com.DAO.CartDao;
 import com.DAO.PaymentDao;
 import com.DAO.ProductDao;
import com.DAO.UserDetailsDao;
import com.model.Cart;
 import com.model.Category;
 import com.model.Payment;
 import com.model.Product;
import com.model.UserDetails;
 
 
 	
 @Controller
 public class CartController {
 	@Autowired
 	CartDao cartdao;
 	@Autowired
 	UserDetailsDao userdao;
 	@Autowired
 	ProductDao productdao;
 	@Autowired
 	PaymentDao paymentdao;
 	@ModelAttribute("cart")
 	public Cart getCart()
 	{
 		return new Cart();
 	}
 	float total=0;
 	float grandtotal=0;
 	
 	@RequestMapping("addtocart/{productid}")
 	public String CartPage(@PathVariable("productid")int productid, @RequestParam("quantity")int quantity,HttpSession session,Model m) 
 	{
 		Cart cart=new Cart();
 		String username=(String) session.getAttribute("username");
 		java.util.Date dt=new java.util.Date();
 		String date=dt.getYear()+":"+dt.getMonth()+":"+dt.getDate()+dt.getHours();
 		cart.setCartitemid(username+date);
 		cart.setProductid(productid);
 		cart.setQuantity(quantity);
 		cart.setStatus("N");
 		cart.setUsername(username);
 		
 		Product product=productdao.getProduct(productid);
 		cart.setProductname(product.getProductName());
 		cart.setPrice(product.getPrice());
 		cartdao.addToCart(cart);
 		List<Cart> list=cartdao.getCartItems(username);
 		m.addAttribute("cartitems",list);
 
 
 
 
 		
 		return "redirect:/cartpage";
 		}
 	
 	/*
 	 * @RequestMapping("addtocart/{productid}") public String
 	 * addtocart(@PathVariable int productid,HttpSession session,Model
 	 * m,@RequestParam int quantity) { Cart cart=new Cart();
 	 * cart.setProductid(productid); String
 	 * username=(String)session.getAttribute("loggedinuser");
 	 * 
 	 * Product product=productdao.getProduct(productid);
 	 * cart.setProductname(product.getProductName());
 	 * cart.setPrice(product.getPrice()); cart.setQuantity(quantity);
 	 * cart.setStatus("N"); cart.setUsername(username);
 	 * 
 	 * java.util.Date dt = new java.util.Date(); String
 	 * currentdate=dt.getDate()+(dt.getMonth()+1)+dt.getYear()+"";
 	 * cart.setCartdetails(username+currentdate);
 	 * 
 	 * 
 	 * cartdao.addToCart(cart); List<Cart> cartlist=cartdao.getCartItems(username);
 	 * float sum=0; for(Cart a:cartlist) { sum=sum+(a.getPrice()*a.getQuantity()); }
 	 * grandtotal=sum; m.addAttribute("grandtotal", sum);
 	 * m.addAttribute("cartlist",cartlist);
 	 * 
 	 * 
 	 * for(Cart b:cartlist) { sum=(b.getPrice()*b.getQuantity()); } grandtotal=sum;
 	 * m.addAttribute("total", sum); m.addAttribute("cartlist",cartlist);
 	 * 
 	 * 
 	 * System.out.
 	 * println("=========............................>cart controller<..................................................======"
 	 * );
 	 * 
 	 * return "redirect:/cartpage"; }
 	 */
 @RequestMapping("cartpage")
 public String getCartPage(HttpSession session,Model m)
 {
 	
 	String username=(String)session.getAttribute("loggedinuser");
 	
 	
 List<Cart> cartlist=cartdao.getCartItems(username);
 String user="";
 
 float sum=0;
 float sum1=0;
 for(Cart a:cartlist)
 {
 	 user=a.getUsername();
 sum=sum+(a.getPrice()*a.getQuantity());
 }
 username=user;
 System.out.println(username);
 grandtotal=sum;
 m.addAttribute("grandtotal", sum);
 m.addAttribute("cartlist",cartlist);
 
 for(Cart b:cartlist)
 {
 sum1=(b.getPrice()*b.getQuantity());
 }
 total=sum1;
 m.addAttribute("total", sum1);
 m.addAttribute("cartlist",cartlist);
 
 
 	
 	return "cart";
 }
 
 
 Cart temp=null;
 @RequestMapping("cartedit/{cartid}")
 public String getEditCart(@PathVariable int cartitemid,Model m) {
 	
 	
 	Cart cart=cartdao.getCartItem(cartitemid);
 	m.addAttribute("editcart",cart);
 	temp=cart;
 	return "redirect:/editcart";
 			}
 
 
 @RequestMapping("/editcart")
 public String gotoEditCart(Model m) {
 	m.addAttribute("editcart", temp);
 	System.out.println("going to :: ::cart edit_page");
 	return "editcart";
 }
 @ModelAttribute("cartedit")
 public Cart getEditCart() {
 	return new Cart();
 }
 
 
 
 @RequestMapping(value="updatecart" , method=RequestMethod.POST)
 public String getUpdateCart(Cart cart, @PathVariable int cartid, HttpSession session)
 {
 	cartdao.updateCartItem(cart); 
 	System.out.println("category is:: ::updated");
 
 	return "redirect:/category";
 }
 @RequestMapping("cartdelete/{cartid}")
 public String deleteCart(@PathVariable int cartid , HttpSession session) {
 	Cart cart =cartdao.getCartItem(cartid);
 	cartdao.deleteCartItem(cart); 
 	System.out.println("cart is:: ::deleted");
 	return "redirect:/cartpage";
 }
 
 @ModelAttribute("payment")
 public Payment getPayment()
 {
 	return new Payment();
 }
 @RequestMapping("payment")
 public String getPaymentPage()
 {
 	return "payment";
 }
 @RequestMapping(value="payment",method=RequestMethod.POST)
 public String confirmpayment( HttpSession session,@RequestParam("paymenttype") String paymenttype , @RequestParam("cardno") String cardnumber,Model m )
 {
 	int card=0;
 	 String username=(String)session.getAttribute("loggedinuser");
 	UserDetails u=userdao.getUserDetail(username);
 	m.addAttribute("address",u.getAddress());
 	
 List<Cart> cartlist=cartdao.getCartItems(username);
 float sum=0;
 float sum1=0;
 for(Cart a:cartlist)
 {
 sum=sum+(a.getPrice()*a.getQuantity());
 }
 grandtotal=sum;
 m.addAttribute("grandtotal", sum);
 m.addAttribute("cartlist",cartlist);
 
 for(Cart b:cartlist)
 {
 sum1=(b.getPrice()*b.getQuantity());
 }
 total=sum1;
 m.addAttribute("total", sum1);
 m.addAttribute("cartlist",cartlist);
 m.addAttribute("user",username);
 
  if(paymenttype.equals("card"))
 	 {
 		 card=Integer.parseInt(cardnumber);
 	 }
 	 Payment obj=new Payment();
 	 obj.setCardno(card);
 	 
 		
 	return "bill";
 	
 }
 	
 	}

/*
 * import java.util.List;
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.PathVariable; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestParam;
 * 
 * import com.DAO.CartDao; import com.DAO.ProductDao; import com.model.Cart;
 * import com.model.Product;
 * 
 * @Controller public class CartController {
 * 
 * @Autowired CartDao cartDAO;
 * 
 * @Autowired ProductDao productDAO;
 * 
 * @RequestMapping(value="/addtocart/{productid}") public String
 * addToCart(@PathVariable("productid")int
 * productid, @RequestParam("quantity")int quantity,HttpSession session,Model m)
 * { Cart cart = new Cart(); String username=(String)
 * session.getAttribute("username"); java.util.Date dt=new java.util.Date();
 * String date=dt.getYear()+":"+dt.getMonth()+":"+dt.getDate()+dt.getHours();
 * cart.setCartitemid(username+dt); cart.setProductid(productid);
 * cart.setQuantity(quantity);
 * 
 * cart.setStatus("N"); cart.setUsername(username);
 * 
 * Product product=productDAO.getProduct(productid);
 * cart.setProductname(product.getProductName());
 * cart.setPrice(product.getPrice());
 * 
 * cartDAO.addToCart(cart); List<Cart> list=cartDAO.getCartItems(username);
 * m.addAttribute("cartitems",list);
 * 
 * return "redirect:/cartpage";
 * 
 * 
 * }
 * 
 * @RequestMapping("cartpage") public String getCartPage(HttpSession
 * session,Model m) {
 * 
 * String username=(String)session.getAttribute("loggedinuser");
 * 
 * 
 * List<Cart> cartlist=cartDAO.getCartItems(username); String user="";   float
 * grandtotal=0; float total=0; float sum=0; float sum1=0; for(Cart a:cartlist)
 * { user=a.getUsername(); sum=sum+(a.getPrice()*a.getQuantity()); }
 * username=user; System.out.println(username); grandtotal=sum;
 * m.addAttribute("grandtotal", sum); m.addAttribute("cartlist",cartlist);
 * 
 * for(Cart b:cartlist) { sum1=(b.getPrice()*b.getQuantity()); } total=sum1;
 * m.addAttribute("total", sum1); m.addAttribute("cartlist",cartlist);      
 * return "cart"; }
 * 
 * @RequestMapping(value="/updatecartitem/{cartid}") public String
 * updateCartITem(@PathVariable("cartid")int
 * cartid, @RequestParam("quantity")int quantity,@RequestParam("update") String
 * optype,HttpSession session,Model m) { Cart cart=cartDAO.getCartItem(cartid);
 * String username=(String) session.getAttribute("username");
 * if(optype.equals("DELETE")) { return "redirect:/deleteCartItem/"+cartid; }
 * 
 * cart.setQuantity(quantity); cartDAO.updateCartItem(cart);
 * 
 * List<Cart> list=cartDAO.getCartItems(username);
 * 
 * m.addAttribute("cartitems",list);
 * 
 * return "cart"; } public void delete(Cart c) { cartDAO.deleteCartItem(c); }
 * 
 * @RequestMapping(value="/deleteCartItem/{cartid}") public String
 * deleteCartItem(@PathVariable("cartid")int cartid,HttpSession session,Model m)
 * { Cart cart=cartDAO.getCartItem(cartid);
 * 
 * String username=(String) session.getAttribute("username");
 * cartDAO.deleteCartItem(cart);
 * 
 * List<Cart> list=cartDAO.getCartItems(username);
 * 
 * m.addAttribute("cartitems",list); return "cart";
 * 
 * }
 * 
 * 
 * 
 * }
 * 
 */