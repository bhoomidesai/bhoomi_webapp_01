package one.project.bhoomi_webapp_01.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import one.project.bhoomi_webapp_01.dao.ProductDAO;
import one.project.bhoomi_webapp_01.dao.ProductDAOImpl;
import one.project.bhoomi_webapp_01.model.ProductModel;

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

}