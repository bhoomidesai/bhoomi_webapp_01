package one.project.bhoomi_webapp_01.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import one.project.bhoomi_webapp_01.dao.CartDAO;
import one.project.bhoomi_webapp_01.dao.CartImpl;
import one.project.bhoomi_webapp_01.dao.ProductDAO;
import one.project.bhoomi_webapp_01.dao.ProductDAOImpl;
import one.project.bhoomi_webapp_01.model.Cart;
@RequestMapping("/cart")
@Controller

public class CartController {
	
		@Autowired
		CartDAO cr =new CartImpl();
		ProductDAO p= new ProductDAOImpl();
		@PostMapping(value = "/{id}")
		public String gotreg(@PathVariable("id") int id, @ModelAttribute ("product") Cart user1, Model model){
				model.addAttribute("product", p.getById(id));
				cr.insert(user1);
			return "redirect:/cart/all";
		}

		@RequestMapping(value = "/delete/{id}")
		public String deletedata(@PathVariable("id") Integer st) {
			cr.delete(st);	
			return "redirect:/cart/all";
		}
		
		@RequestMapping(value={"/cart/get"})
		@ResponseBody List<Cart> view()
		{
			return  cr.getAll();
		}
	}

