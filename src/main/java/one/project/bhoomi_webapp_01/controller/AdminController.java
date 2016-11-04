package one.project.bhoomi_webapp_01.controller;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import one.project.bhoomi_webapp_01.dao.ProductDAO;
import one.project.bhoomi_webapp_01.model.Categories;
import one.project.bhoomi_webapp_01.model.ProductModel;
@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	ProductDAO p;
/*	private CategoryDAO c;
*/	
	@RequestMapping(value = "/delete/{id}")
	public String deletedata(@PathVariable("id") Integer st) {
		p.delete(st);	
		return "redirect:/admin/viewall";
	}
	@RequestMapping(value = "/viewall")
	public String all(Model model) {
		model.addAttribute("product", new ProductModel());
		model.addAttribute("products", p.getAll());
		return "admin";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@Valid @ModelAttribute("product") ProductModel product,BindingResult results, Model model,HttpServletRequest request) {
		if(results.hasErrors())
		{
			model.addAttribute("product",product);
			model.addAttribute("products",p.getAll());
			return "admin";
		}
		
		if (product.getId() == 0) {
			// new product, add it
			p.insert(product);
			
			
			MultipartFile file = product.getFile();

			String originalfile = file.getOriginalFilename();

			String filepath = request.getSession().getServletContext().getRealPath("/resources/images/product/");

			System.out.println("Path of file " + filepath);
			String filename = filepath + "\\" + product.getId() + ".jpg";
			System.out.println("File Path File " + filepath);

			try {
				byte imagebyte[] = product.getFile().getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
				fos.write(imagebyte);
				fos.close();

			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {

			p.update(product);
		}		
		return "redirect:/admin/viewall";
	}
	@RequestMapping(value="/edit/{id}", method= RequestMethod.GET)
	public String editProduct(@PathVariable("id") int id, Model model) {
		model.addAttribute("product", p.getById(id));
		model.addAttribute("products", p.getAll());
		return "admin";
	}
	// for categories
	@RequestMapping(value = "/addc")
	public String gotreg(Model model){
		model.addAttribute("c1", new Categories());
		return "addcategory";
	}

	/*@PostMapping(value = "/addcat")
	public String go(@ModelAttribute ("c1") Categories user1,BindingResult bindingResult, Model model){
	
		c.insert(user1);	
		
		return "category";
	}*/
}
