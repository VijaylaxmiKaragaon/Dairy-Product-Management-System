package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.CustomerDAO;
import com.dairyproduct.dto.Customer;
import com.dairyproduct.utility.Connector;

public class CustomerDAOImpl implements CustomerDAO {

    private Connection con;

    public CustomerDAOImpl() {
        con = Connector.requestConnection();
    }



    // Register Customer
    @Override
    public boolean registerCustomer(Customer customer) {

        String sql = "INSERT INTO customer(name,email,phone,address,password) VALUES(?,?,?,?,?)";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setString(1, customer.getName());

            ps.setString(2, customer.getEmail());

            ps.setString(3, customer.getPhone());

            ps.setString(4, customer.getAddress());

            ps.setString(5, customer.getPassword());


            return ps.executeUpdate() > 0;


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return false;
    }





    // Login Customer
    @Override
    public Customer login(String email, String password) {


        String sql = "SELECT * FROM customer WHERE email=? AND password=?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setString(1, email);

            ps.setString(2, password);



            try(ResultSet rs = ps.executeQuery()) {


                if(rs.next()) {


                    return mapResultSetToCustomer(rs);

                }

            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return null;

    }





    // Update Customer
    @Override
    public boolean updateCustomer(Customer customer) {


        String sql = "UPDATE customer SET name=?, email=?, phone=?, address=?, password=? WHERE customer_id=?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setString(1, customer.getName());

            ps.setString(2, customer.getEmail());

            ps.setString(3, customer.getPhone());

            ps.setString(4, customer.getAddress());

            ps.setString(5, customer.getPassword());

            ps.setInt(6, customer.getCustomerId());


            return ps.executeUpdate() > 0;


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return false;

    }





    // Delete Customer
    @Override
    public boolean deleteCustomer(int customerId) {


        String sql = "DELETE FROM customer WHERE customer_id=?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setInt(1, customerId);


            return ps.executeUpdate() > 0;


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return false;

    }





    // Get Customer By Id
    @Override
    public Customer getCustomerById(int customerId) {


        String sql = "SELECT * FROM customer WHERE customer_id=?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setInt(1, customerId);


            try(ResultSet rs = ps.executeQuery()) {


                if(rs.next()) {


                    return mapResultSetToCustomer(rs);

                }

            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return null;

    }





    // Get All Customers
    @Override
    public List<Customer> getAllCustomers() {


        List<Customer> list = new ArrayList<>();


        String sql = "SELECT * FROM customer ORDER BY customer_id DESC";


        try(PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()) {


            while(rs.next()) {


                list.add(mapResultSetToCustomer(rs));


            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return list;

    }





    // ResultSet to Customer Object
    private Customer mapResultSetToCustomer(ResultSet rs) throws SQLException {


        Customer customer = new Customer();


        customer.setCustomerId(
            rs.getInt("customer_id")
        );


        customer.setName(
            rs.getString("name")
        );


        customer.setEmail(
            rs.getString("email")
        );


        customer.setPhone(
            rs.getString("phone")
        );


        customer.setAddress(
            rs.getString("address")
        );


        customer.setPassword(
            rs.getString("password")
        );
        return customer;

    }

}