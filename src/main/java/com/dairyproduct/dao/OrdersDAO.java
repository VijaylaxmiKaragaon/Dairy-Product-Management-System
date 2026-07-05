package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.Orders;

public interface OrdersDAO {
   
	void placeOrder(Orders order);

    void updateOrder(Orders order);

    void deleteOrder(int orderId);

    Orders getOrderById(int orderId);

    List<Orders> getOrdersByCustomer(int customerId);

    List<Orders> getAllOrders();

}
