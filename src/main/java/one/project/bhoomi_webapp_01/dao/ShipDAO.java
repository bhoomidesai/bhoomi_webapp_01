package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.ShipAdd;

public interface ShipDAO {
	public List<ShipAdd> getAll();
	public void insert(ShipAdd p);
	public void update(ShipAdd p);
	public ShipAdd getById(int id);
	public void delete(int id);

}
