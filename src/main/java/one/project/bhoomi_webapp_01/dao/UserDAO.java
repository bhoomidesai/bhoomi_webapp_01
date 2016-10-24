package one.project.bhoomi_webapp_01.dao;

import one.project.bhoomi_webapp_01.model.User;

public interface UserDAO {
	public void insertUser(User user);
	public User getUserDetails(String email);

}
