package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import one.project.bhoomi_webapp_01.model.BillingAddress;
@Repository
@Transactional
public class BillDAOImpl implements BillDAO{
	@Autowired	
	private SessionFactory sessionFactory;
	
	
	public void insert(BillingAddress p) {
		sessionFactory.getCurrentSession().persist(p);
	}
	
	public List<BillingAddress> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM BillingAddress").list();
	}

	public void update(BillingAddress p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(p);
	}

	public BillingAddress getById(int id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(BillingAddress.class,id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(getById(id));		}

}
