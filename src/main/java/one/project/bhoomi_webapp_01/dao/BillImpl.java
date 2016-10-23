package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import one.project.bhoomi_webapp_01.model.BillAdd;

@Repository
@Transactional
public class BillImpl implements BillDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<BillAdd> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM BillImpl").list();
	}

	@Override
	public void insert(BillAdd p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(p);
	}

	@Override
	public void update(BillAdd p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(p);
	}

	@Override
	public BillAdd getById(int id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(BillAdd.class,id);
		}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(getById(id));		}

	}
