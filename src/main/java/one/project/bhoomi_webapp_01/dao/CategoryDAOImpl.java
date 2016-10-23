package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import one.project.bhoomi_webapp_01.model.Categories;
@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired	
	private SessionFactory sessionFactory;
	
	
	public void insert(Categories p) {
		sessionFactory.getCurrentSession().persist(p);
	}
	
	public List<Categories> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM Categories").list();
	}

	public void update(Categories p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(p);
	}

	public Categories getById(int id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(Categories.class,id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(getById(id));
		
	}


}
