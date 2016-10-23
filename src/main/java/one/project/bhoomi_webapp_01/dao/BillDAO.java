package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.BillAdd;

public interface BillDAO {
	public List<BillAdd> getAll();
	public void insert(BillAdd p);
	public void update(BillAdd p);
	public BillAdd getById(int id);
	public void delete(int id);

}
