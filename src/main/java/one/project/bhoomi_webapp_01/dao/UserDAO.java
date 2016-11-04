package one.project.bhoomi_webapp_01.dao;

import java.util.List;

import one.project.bhoomi_webapp_01.model.User;

public interface UserDAO {
	public void insertUser(User user);
	public User getUserDetails(String email);

   public User getUById(int customerId);

   public List<User> getAllCustomers();
   User getCustomerByUsername(String username);

}
