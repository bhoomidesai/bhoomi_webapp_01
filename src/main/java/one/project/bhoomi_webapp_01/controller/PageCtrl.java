package one.project.bhoomi_webapp_01.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageCtrl 
{
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
	@RequestMapping(value={"/cart"})
	public ModelAndView productde()
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("cart");
		return view;
	}
	@RequestMapping(value={"/xplor/{id}"})
	public ModelAndView viewbyid(@PathVariable("id") String id)
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("viewdetail");
		view.addObject("id",id);
		return view;
	}
	@RequestMapping(value={"/contact"})
	public ModelAndView contact()
	{
	ModelAndView view = new ModelAndView();
		view.setViewName("contactus");
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
