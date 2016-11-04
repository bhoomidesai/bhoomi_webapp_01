package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.BillingAddress;

public interface BillDAO {
	public List<BillingAddress> getAll();
	public void insert(BillingAddress p);
	public void update(BillingAddress p);
	public BillingAddress getById(int id);
	public void delete(int id);

}
