package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.OrderDetailsDAO;
import com.dairyproduct.dto.OrderDetails;
import com.dairyproduct.utility.Connector;

public class OrderDetailsDAOImpl implements OrderDetailsDAO {
    
	private Connection con;
	
	public OrderDetailsDAOImpl() {
		con = Connector.requestConnection();
	}
	@Override
	public void addOrderDetail(OrderDetails orderDetails) {
		 String query = "INSERT INTO order_details(order_id, product_id, quantity, price, subtotal) VALUES(?,?,?,?,?)";
	        try (PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, orderDetails.getOrderId());
	            ps.setInt(2, orderDetails.getProductId());
	            ps.setInt(3, orderDetails.getQuantity());
	            ps.setDouble(4, orderDetails.getPrice());
	            ps.setDouble(5, orderDetails.getSubtotal());
	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	@Override
	public void updateOrderDetail(OrderDetails orderDetails) {
		 String query = "UPDATE order_details SET quantity=?, price=?, subtotal=? WHERE order_detail_id=?";
	        try (PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, orderDetails.getQuantity());
	            ps.setDouble(2, orderDetails.getPrice());
	            ps.setDouble(3, orderDetails.getSubtotal());
	            ps.setInt(4, orderDetails.getOrderDetailId());
	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	@Override
	public void deleteOrderDetail(int orderDetailId) {
		String query = "DELETE FROM order_details WHERE order_detail_id=?";
        try (PreparedStatement ps = con.prepareStatement(query)){
            ps.setInt(1, orderDetailId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

	@Override
	public OrderDetails getOrderDetailById(int orderDetailId) {
		String query = "SELECT * FROM order_details WHERE order_detail_id=?";
		 OrderDetails order = null;
        try (PreparedStatement ps = con.prepareStatement(query)){
            ps.setInt(1, orderDetailId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                order = new OrderDetails();
                order.setOrderDetailId(rs.getInt("order_detail_id"));
                order.setOrderId(rs.getInt("order_id"));
                order.setProductId(rs.getInt("product_id"));
                order.setQuantity(rs.getInt("quantity"));
                order.setPrice(rs.getDouble("price"));
                order.setSubtotal(rs.getDouble("subtotal"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return order;
	}

	@Override
	public List<OrderDetails> getOrderDetails(int orderId) {
		    List<OrderDetails> list = new ArrayList<>();
	        String query = "SELECT * FROM order_details WHERE order_id=?";
	        OrderDetails order = null;
	        try (PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, orderId);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                order = new OrderDetails();
	                order.setOrderDetailId(rs.getInt("order_detail_id"));
	                order.setOrderId(rs.getInt("order_id"));
	                order.setProductId(rs.getInt("product_id"));
	                order.setQuantity(rs.getInt("quantity"));
	                order.setPrice(rs.getDouble("price"));
	                order.setSubtotal(rs.getDouble("subtotal"));
	                list.add(order);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return list;
	}

	@Override
	public List<OrderDetails> getAllOrderDetails() {
		    List<OrderDetails> list = new ArrayList<>();
		    OrderDetails order = null;
	        String query = "SELECT * FROM order_details";
	        try(PreparedStatement ps = con.prepareStatement(query)){
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                order = new OrderDetails();
	                order.setOrderDetailId(rs.getInt("order_detail_id"));
	                order.setOrderId(rs.getInt("order_id"));
	                order.setProductId(rs.getInt("product_id"));
	                order.setQuantity(rs.getInt("quantity"));
	                order.setPrice(rs.getDouble("price"));
	                order.setSubtotal(rs.getDouble("subtotal"));
	                list.add(order);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return list;
	        }
}
