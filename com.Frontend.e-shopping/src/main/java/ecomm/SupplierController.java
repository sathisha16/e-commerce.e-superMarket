package ecomm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.DAO.SupplierDao;

import com.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDao supplierDaoBean;
	
	@RequestMapping("supplier")
	public String getSupplier(Model m) {
		List<Supplier>suppliers=supplierDaoBean.getSupplierDetails();
		m.addAttribute("supplierlist", suppliers);
		System.out.println("supplier is:: ::viewed");
		return "supplier";
		
	}
	
	@ModelAttribute("supplierAttribute")
	public Supplier supplierAtrbt() {
		return new Supplier();
	}
	@RequestMapping(value="addsupplier"  ,method=RequestMethod.POST)
	public String addSupplier(Supplier supplier) {
		supplierDaoBean.insertUpdateSupplier(supplier);
		System.out.println("supplier is:: ::added");
		return "redirect:/supplier";
		}
	
	
	//------------------------------------------------
	
	Supplier temp=null;
	@RequestMapping("edit/{supplierid}")
	public String getEditUser(@PathVariable int supplierid, Model m) {
		Supplier supplier=supplierDaoBean.getSupplier(supplierid);
		m.addAttribute("editsupplier", supplier);
		temp=supplier;
		return "redirect:/editsupplier";
	}
	@RequestMapping("/editsupplier")
  public String editsupplier(Model m)
	{
		m.addAttribute("editsupplier",temp);
		return "editsupplier";
	}

	@ModelAttribute("supplieredit")
	public Supplier getModelSupplier() {
		return new Supplier();
	}
	
	@RequestMapping(value="updatesupplier" , method=RequestMethod.POST)
	public String getUpdateSupplier(Supplier supplier) {
		supplierDaoBean.insertUpdateSupplier(supplier);
		System.out.println("supplier is:: ::updated");
		return "redirect:/supplier";
		
	}
	@RequestMapping("supplierdelete/{supplierid}")
	public String deletesupplier(@PathVariable int supplierid) {
		
		System.out.println("delete..supplier:: ::");
		Supplier supplier=supplierDaoBean.getSupplier(supplierid);
		supplierDaoBean.deleteSupplier(supplier);
		System.out.println("supplier is:: ::deleted");
		return "redirect:/supplier";
	}
}
