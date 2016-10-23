package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.Registration;

public interface RegistrationDAO {
	public List<Registration> getAll();
	public void insert(Registration p);
	public void update(Registration p);
	public Registration getById(int id);
	public void delete(int id);
}
