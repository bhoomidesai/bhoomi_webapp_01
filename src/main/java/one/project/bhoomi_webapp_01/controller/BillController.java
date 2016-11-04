package one.project.bhoomi_webapp_01.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import one.project.bhoomi_webapp_01.dao.BillDAO;
import one.project.bhoomi_webapp_01.dao.UserDAO;
import one.project.bhoomi_webapp_01.model.BillingAddress;
import one.project.bhoomi_webapp_01.model.User;
@RequestMapping("/cart")
@Controller
public class BillController {
	@Autowired
	BillDAO bill ;
	private UserDAO user;
	@RequestMapping(value = "/shipping")
	public String gotreg(Model model){
		model.addAttribute("user", new BillingAddress());
		return "shipping";
	}

	@PostMapping(value = "/pay")
	public String go(@ModelAttribute ("user") BillingAddress user1,BindingResult bindingResult, Model model){
	
		bill.insert(user1);	
		
		return "/payment";
	}
	@RequestMapping(value="/ty", method= RequestMethod.GET)
	public String fillrecept(Principal principal, Model model) {
	    User customer = user.getCustomerByUsername(principal.getName());
		 model.addAttribute("customer", customer);
		 model.addAttribute("billId",bill.getById(1));
		return "/thankyou";
	}

}
