package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.Categories;
public interface CategoryDAO {
	public List<Categories> getAll();
	public void insert(Categories p);
	public void update(Categories p);
	public Categories getById(int id);
	public void delete(int id);

}
