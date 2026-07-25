package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dairyproduct.dao.OrdersDAO;
import com.dairyproduct.dto.Orders;
import com.dairyproduct.utility.Connector;

public class OrdersDAOImpl implements OrdersDAO {
    private Connection con;
    public OrdersDAOImpl() {
    	con = Connector.requestConnection();
    }
    
    @Override
    public void placeOrder(Orders order) {
        String query = "INSERT INTO orders(customer_id, order_date, total_amount, payment_method, order_status, delivery_address) VALUES(?,?,?,?,?,?)";

        try (PreparedStatement ps = con.prepareStatement(query)) {

            ps.setInt(1, order.getCustomerId());
            ps.setDate(2, java.sql.Date.valueOf(order.getOrderDate()));
            ps.setDouble(3, order.getTotalAmount());
            ps.setString(4, order.getPaymentMethod());
            ps.setString(5, order.getOrderStatus());
            ps.setString(6, order.getDeliveryAddress());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	@Override
	public void updateOrder(Orders order) {
	    String query = "UPDATE orders SET customer_id=?, order_date=?, total_amount=?, payment_method=?, order_status=?, delivery_address=? WHERE order_id=?";

	    try (PreparedStatement ps = con.prepareStatement(query)) {

	        ps.setInt(1, order.getCustomerId());
	        ps.setDate(2, java.sql.Date.valueOf(order.getOrderDate()));
	        ps.setDouble(3, order.getTotalAmount());
	        ps.setString(4, order.getPaymentMethod());
	        ps.setString(5, order.getOrderStatus());
	        ps.setString(6, order.getDeliveryAddress());
	        ps.setInt(7, order.getOrderId());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	@Override
	public void deleteOrder(int orderId) {
		 String query = "DELETE FROM orders WHERE order_id=?";
	        try (PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, orderId);
	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	@Override
	public Orders getOrderById(int orderId) {

	    String query = "SELECT * FROM orders WHERE order_id=?";
	    Orders order = null;

	    try (PreparedStatement ps = con.prepareStatement(query)) {

	        ps.setInt(1, orderId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	            order = new Orders();

	            order.setOrderId(rs.getInt("order_id"));
	            order.setCustomerId(rs.getInt("customer_id"));
	            order.setOrderDate(rs.getDate("order_date").toString());
	            order.setTotalAmount(rs.getDouble("total_amount"));
	            order.setPaymentMethod(rs.getString("payment_method"));
	            order.setOrderStatus(rs.getString("order_status"));
	            order.setDeliveryAddress(rs.getString("delivery_address"));
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return order;
	}

	@Override
	public List<Orders> getOrdersByCustomer(int customerId) {
		    List<Orders> list = new ArrayList<>();
		    Orders order = null;
	        String query = "SELECT * FROM orders WHERE customer_id=?";
	        try (PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, customerId);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                order = new Orders();
	                order.setOrderId(rs.getInt("order_id"));
	                order.setCustomerId(rs.getInt("customer_id"));
	                order.setOrderDate(rs.getDate("order_date").toString());
	                order.setTotalAmount(rs.getDouble("total_amount"));
	                order.setPaymentMethod(rs.getString("payment_method"));
	                order.setOrderStatus(rs.getString("order_status"));
	                order.setDeliveryAddress(rs.getString("delivery_address"));
	                list.add(order);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return list;
	}

	@Override
	public List<Orders> getAllOrders() {
        List<Orders> list = new ArrayList<>();
        Orders order = null;
        String query = "SELECT * FROM orders";
        try (PreparedStatement ps = con.prepareStatement(query)){
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                order = new Orders();
                order.setOrderId(rs.getInt("order_id"));
                order.setCustomerId(rs.getInt("customer_id"));
                order.setOrderDate(rs.getDate("order_date").toString());
                order.setTotalAmount(rs.getDouble("total_amount"));
                order.setPaymentMethod(rs.getString("payment_method"));
                order.setOrderStatus(rs.getString("order_status"));
                order.setDeliveryAddress(rs.getString("delivery_address"));
                list.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;

	}

}
