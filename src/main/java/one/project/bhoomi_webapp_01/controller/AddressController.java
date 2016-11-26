package one.project.bhoomi_webapp_01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Controller;

import one.project.bhoomi_webapp_01.dao.UserDAO;
import one.project.bhoomi_webapp_01.model.BillingAddress;
import one.project.bhoomi_webapp_01.model.Cart;

@Controller
public class AddressController {

	@Autowired
	UserDAO user;
	public BillingAddress getAddress()
	{
		return new BillingAddress();
	}
	
	public String insertAddress(BillingAddress billingAddress,MessageContext messageContext,Cart cart)
	{
		billingAddress.setUser(cart.getUser());
		String result=user.insertBillingAddress(billingAddress);
		if(result=="inserted")
		{			
		return "success";
		}
		return "fail";
		
	}
}
