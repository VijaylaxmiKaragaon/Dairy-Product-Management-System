package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.PaymentDAO;
import com.dairyproduct.dto.Payment;
import com.dairyproduct.utility.Connector;

public class PaymentDAOImpl implements PaymentDAO {
	 private Connection con;

	    public PaymentDAOImpl() {
	        con = Connector.requestConnection();
	    }
	    
	    @Override
	    public void makePayment(Payment payment) {

	        String query =
	            "INSERT INTO payment(order_id, payment_mode, transaction_id, payment_status, payment_date) VALUES(?,?,?,?,?)";

	        try (PreparedStatement ps = con.prepareStatement(query)) {

	            ps.setInt(1, payment.getOrderId());
	            ps.setString(2, payment.getPaymentMode());
	            ps.setString(3, payment.getTransactionId());
	            ps.setString(4, payment.getPaymentStatus());
	            ps.setDate(5, java.sql.Date.valueOf(payment.getPaymentDate()));

	            ps.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    @Override
	    public void updatePayment(Payment payment) {

	        String query = "UPDATE payment SET order_id=?, payment_mode=?, transaction_id=?, payment_status=?, payment_date=? WHERE payment_id=?";

	        try (PreparedStatement ps = con.prepareStatement(query)) {

	            ps.setInt(1, payment.getOrderId());
	            ps.setString(2, payment.getPaymentMode());
	            ps.setString(3, payment.getTransactionId());
	            ps.setString(4, payment.getPaymentStatus());
	            ps.setDate(5, java.sql.Date.valueOf(payment.getPaymentDate()));
	            ps.setInt(6, payment.getPaymentId());

	            ps.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	@Override
	public void deletePayment(int paymentId) {
		 String query = "DELETE FROM payment WHERE payment_id=?";
	        try(PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, paymentId);
	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	@Override
	public Payment getPaymentById(int paymentId) {
	    String query = "SELECT * FROM payment WHERE payment_id=?";
	    Payment payment = null;

	    try (PreparedStatement ps = con.prepareStatement(query)) {

	        ps.setInt(1, paymentId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            payment = new Payment();

	            payment.setPaymentId(rs.getInt("payment_id"));
	            payment.setOrderId(rs.getInt("order_id"));
	            payment.setPaymentMode(rs.getString("payment_mode"));
	            payment.setTransactionId(rs.getString("transaction_id"));
	            payment.setPaymentStatus(rs.getString("payment_status"));
	            payment.setPaymentDate(rs.getDate("payment_date").toString());
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return payment;
	}
	@Override
	public Payment getPaymentByOrderId(int orderId) {
	    String query = "SELECT * FROM payment WHERE order_id=?";
	    Payment payment = null;

	    try (PreparedStatement ps = con.prepareStatement(query)) {

	        ps.setInt(1, orderId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            payment = new Payment();

	            payment.setPaymentId(rs.getInt("payment_id"));
	            payment.setOrderId(rs.getInt("order_id"));
	            payment.setPaymentMode(rs.getString("payment_mode"));
	            payment.setTransactionId(rs.getString("transaction_id"));
	            payment.setPaymentStatus(rs.getString("payment_status"));

	            if (rs.getDate("payment_date") != null) {
	                payment.setPaymentDate(rs.getDate("payment_date").toString());
	            }
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return payment;
	}
	
	@Override
	public List<Payment> getAllPayments() {
		    List<Payment> list = new ArrayList<>();
		    Payment payment = null;
	        String query = "SELECT * FROM payment";
	        try (PreparedStatement ps = con.prepareStatement(query)){
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                payment = new Payment();
	                payment.setPaymentId(rs.getInt("payment_id"));
	                payment.setOrderId(rs.getInt("order_id"));
	                payment.setPaymentMode(rs.getString("payment_mode"));
	                payment.setTransactionId(rs.getString("transaction_id"));
	                payment.setPaymentStatus(rs.getString("payment_status"));
	                payment.setPaymentDate(rs.getDate("payment_date").toString());
	                list.add(payment);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return list;
	}

}
