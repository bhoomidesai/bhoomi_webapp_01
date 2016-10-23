package one.project.bhoomi_webapp_01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import one.project.bhoomi_webapp_01.dao.RegistrationDAO;
import one.project.bhoomi_webapp_01.model.Registration;
@RequestMapping("/reg")
@Controller
public class SignupController {
	@Autowired
	RegistrationDAO r ;
	@RequestMapping(value = "/reg")
	public String gotreg(Model model){
		model.addAttribute("user", new Registration());
		return "reg";
	}

	@PostMapping(value = "/in")
	public String go(@ModelAttribute ("user") Registration user1,BindingResult bindingResult, Model model){
		
		
		r.insert(user1);	
		
		return "/reg";
	}
}
