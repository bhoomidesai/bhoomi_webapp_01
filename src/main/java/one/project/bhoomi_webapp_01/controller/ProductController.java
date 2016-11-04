package one.project.bhoomi_webapp_01.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import one.project.bhoomi_webapp_01.dao.ProductDAO;
import one.project.bhoomi_webapp_01.dao.ProductDAOImpl;
import one.project.bhoomi_webapp_01.model.ProductModel;
import one.project.bhoomi_webapp_01.model.User;

@Controller
public class ProductController
{
	@Autowired
	ProductDAO p= new ProductDAOImpl();
	@RequestMapping(value={"/v/get"})
	@ResponseBody List<ProductModel> view()
	{
		return  p.getAll();
	}
	@RequestMapping(value = "/xplor/{id}")
	public String gotreg(@PathVariable("id") int id, Model model){
		model.addAttribute("product", p.getById(id));
		return "redirect:/viewdetail";
	}
	
	
}