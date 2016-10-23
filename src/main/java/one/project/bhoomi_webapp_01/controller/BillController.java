package one.project.bhoomi_webapp_01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import one.project.bhoomi_webapp_01.dao.BillDAO;
import one.project.bhoomi_webapp_01.model.BillAdd;
import one.project.bhoomi_webapp_01.model.Registration;

@RequestMapping("/bill")
@Controller
public class BillController {
	@Autowired
	private BillDAO b;
	@RequestMapping(value = "/bill")
	public String gotreg(Model model){
		model.addAttribute("user", new Registration());
		return "shipping";
	}

	@PostMapping(value = "/in")
	public String go(@ModelAttribute ("bill") BillAdd user1,BindingResult bindingResult, Model model){
		
		
		b.insert(user1);	
		
		return "/reg";
	}
	

}
