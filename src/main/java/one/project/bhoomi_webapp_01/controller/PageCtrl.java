package one.project.bhoomi_webapp_01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import one.project.bhoomi_webapp_01.dao.ProductDAO;


@Controller
public class PageCtrl 
{
	@Autowired
	ProductDAO p;
	@RequestMapping(value = { "/", "/index" })
		public ModelAndView landing() {
			ModelAndView mv = new ModelAndView("page");
			return mv;
		}
	@RequestMapping(value={"/login"})
	public ModelAndView Loginpage()
	{
		  
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
		return view;
	}
	
	@RequestMapping(value={"/viewlist"})
	public ModelAndView displayallproduct()
	{
		  
		ModelAndView view = new ModelAndView();
		view.setViewName("viewitems");
		return view;
	}
	@RequestMapping(value={"/viewlist/{dir}"})
	public ModelAndView productde(@PathVariable("dir") String pro)
	{
	ModelAndView view = new ModelAndView();
		view.addObject("pro",pro);
		view.setViewName("viewitems");
		
		return view;
	}
	/*@RequestMapping(value={"/cart"})
	public ModelAndView productde()
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("cart");
		return view;
	}*/
	/*@RequestMapping(value={"/xplor/{id}"})
	public ModelAndView viewbyid(@PathVariable("id") String id)
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("viewdetail");
		view.addObject("id",id);
		return view;
	}*/
	@RequestMapping(value={"/contact"})
	public ModelAndView contact()
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("contactus");
		return view;
	}
	@RequestMapping(value={"/viewdetail/{id}"})
	public ModelAndView show(@PathVariable("id") int i, Model model)
	{
		ModelAndView mv = new ModelAndView("viewdetail");
		//model.addAttribute("products", p.getAll());		
		mv.addObject("product",p.getById(i));
		return mv;
	}
	@RequestMapping(value={"/forget"})
	public ModelAndView fg()
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("fg");
		return view;
	}
	@RequestMapping(value={"/about"})
	public ModelAndView about()
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("aboutus");
		return view;
	}
	


}
