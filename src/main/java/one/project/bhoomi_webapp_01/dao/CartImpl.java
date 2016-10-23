package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import one.project.bhoomi_webapp_01.model.Cart;

@Repository
@Transactional
public class CartImpl implements CartDAO {
	@Autowired	
	private SessionFactory sessionFactory;
	
	
	public void insert(Cart p) {
		sessionFactory.getCurrentSession().persist(p);
	}
	
	public List<Cart> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM Cart").list();
	}

	public void update(Cart p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(p);
	}

	public Cart getById(int id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(Cart.class,id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(getById(id));
		
	}

}
