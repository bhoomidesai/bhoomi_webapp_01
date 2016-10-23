package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.ProductModel;

public interface ProductDAO {
	public List<ProductModel> getAll();
	public void insert(ProductModel p);
	public void update(ProductModel p);
	public ProductModel getById(int id);
	public void delete(int id);

}
