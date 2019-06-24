package com.DAO;

import com.model.OrderDetails;

public interface OrderDetailsDao {
	
	public boolean insertOrderDetails(OrderDetails orderDetails);
	public OrderDetails getOrderDetails(String username);


}
