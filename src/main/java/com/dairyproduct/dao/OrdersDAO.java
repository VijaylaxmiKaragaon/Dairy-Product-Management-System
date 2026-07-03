package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.Orders;

public interface OrdersDAO {
   
	boolean placeOrder(Orders order);
	
	Orders getOrderById(int orderId);
	
	List<Orders> getOrdersByCustomer(int customerId);
	
	List<Orders> getAllOders();
	
	boolean updateOderStatus(int orderId, String status);
}
