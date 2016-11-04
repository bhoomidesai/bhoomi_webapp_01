package one.project.bhoomi_webapp_01.dao;

import one.project.bhoomi_webapp_01.model.CustomerOrder;

public interface CustomerOrderDao {
	void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
