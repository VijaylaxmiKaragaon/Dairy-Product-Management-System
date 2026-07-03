package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.OrderDetails;

public interface OrderDetailsDAO {
    
	boolean addOrderDetail(OrderDetails orderDetails);
	
	List<OrderDetails> getOrderDetails(int orderId);
}
