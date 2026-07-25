package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.OrderDetails;

public interface OrderDetailsDAO {
    
	    void addOrderDetail(OrderDetails orderDetails);

	    void updateOrderDetail(OrderDetails orderDetails);

	    void deleteOrderDetail(int orderDetailId);

	    OrderDetails getOrderDetailById(int orderDetailId);

	    List<OrderDetails> getOrderDetails(int orderId);

	    List<OrderDetails> getAllOrderDetails();
	
	
}
