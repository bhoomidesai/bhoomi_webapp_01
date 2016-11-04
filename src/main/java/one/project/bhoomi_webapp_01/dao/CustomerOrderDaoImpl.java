package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import one.project.bhoomi_webapp_01.model.*;

@Transactional

public class CustomerOrderDaoImpl implements CustomerOrderDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private CartDao cartdao;

	@Override
	public void addCustomerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(customerOrder);

	}

	@Override
	public double getCustomerOrderGrandTotal(int cartId) {

		double grandTotal = 0;
		Cart cart = cartdao.getCartById(cartId);
		List<CartItem> cartItems = cart.getCartItems();

		for (CartItem item : cartItems) {
			grandTotal += item.getTotalPrice();
		}

		return grandTotal;
	}

}
