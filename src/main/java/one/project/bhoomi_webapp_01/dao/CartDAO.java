package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.Cart;


public interface CartDAO {
	public List<Cart> getAll();
	public void insert(Cart p);
	public void update(Cart p);
	public Cart getById(int id);
	public void delete(int id);

}
