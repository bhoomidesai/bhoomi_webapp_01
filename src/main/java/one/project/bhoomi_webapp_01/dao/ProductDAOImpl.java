package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import one.project.bhoomi_webapp_01.model.ProductModel;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired	
	private SessionFactory sessionFactory;
	
	
	public void insert(ProductModel p) {
		sessionFactory.getCurrentSession().persist(p);
	}
	
	public List<ProductModel> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM ProductModel").list();
	}

	public void update(ProductModel p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(p);
	}

	public ProductModel getById(int id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(ProductModel.class,id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(getById(id));		}
	}
