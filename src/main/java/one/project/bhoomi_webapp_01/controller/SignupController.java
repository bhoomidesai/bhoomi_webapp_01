package one.project.bhoomi_webapp_01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import one.project.bhoomi_webapp_01.dao.UserDAO;
import one.project.bhoomi_webapp_01.model.User;
@RequestMapping("/reg")
@Controller
public class SignupController {
	@Autowired
	UserDAO user ;
	@RequestMapping(value = "/reg")
	public String gotreg(Model model){
		model.addAttribute("user", new User());
		return "reg";
	}

	@PostMapping(value = "/in")
	public String go(@ModelAttribute ("user") User user1,BindingResult bindingResult, Model model){
	
		user.insertUser(user1);	
		
		return "/login";
	}
}
