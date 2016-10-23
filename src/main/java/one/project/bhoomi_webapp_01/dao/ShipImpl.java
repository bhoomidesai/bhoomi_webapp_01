package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import one.project.bhoomi_webapp_01.model.ShipAdd;

@Repository
@Transactional
public class ShipImpl implements ShipDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<ShipAdd> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM ShipAdd").list();
	}

	@Override
	public void insert(ShipAdd p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(p);
	}

	@Override
	public void update(ShipAdd p) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(p);

	}

	@Override
	public ShipAdd getById(int id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(ShipAdd.class,id);
		}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(getById(id));		}

	}
