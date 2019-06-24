package ecomm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.DAO.CategoryDao;
import com.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDao categorydao;

	@RequestMapping("category")
	public String getCategory(Model m) {
		List<Category> categories =categorydao.getCategoryDetails();
		m.addAttribute("categorylist",categories);
		System.out.println("category is:: ::viewed");
		return "category";
	}
	
	@ModelAttribute("category")
	public Category getCategoryObject()
	{
		return new Category();
	}
	@RequestMapping(value="addcategory",method=RequestMethod.POST)
	public String addProduct(Category category) {
		categorydao.insertUpdateCategory(category);
		System.out.println("category is:: ::added");
		return "redirect:/category";
	}
//----------------Edit..Delete...Update..&..update...Product
	
	
	
	Category temp=null;
	@RequestMapping("categoryedit/{categoryid}")
	public String getEditCategory(@PathVariable int categoryid,Model m) {
		
		
		Category category=categorydao.getCategory(categoryid);
		m.addAttribute("editcategory",category);
		temp=category;
		return "redirect:/editcategory";
				}
	
	
	@RequestMapping("/editcategory")
	public String gotoEditCategory(Model m) {
		m.addAttribute("editcategory", temp);
		System.out.println("going to :: :: edit_page");
		return "editcategory";
	}
	@ModelAttribute("categoryedit")
	public Category getEditCategory() {
		return new Category();
	}
	@RequestMapping(value="updatecategory" , method=RequestMethod.POST)
	public String getUpdateCategory(Category category)
	{
		categorydao.insertUpdateCategory(category);
		System.out.println("category is:: ::updated");

		return "redirect:/category";
	}
	@RequestMapping("deletecategory/{categoryid}")
	public String deleteCategory(@PathVariable int categoryid) {

		Category category =categorydao.getCategory(categoryid);
		categorydao.deleteCategory(category);
		System.out.println("category is:: ::deleted");
		return "redirect:/category";
	}
	
	
	
	
}
