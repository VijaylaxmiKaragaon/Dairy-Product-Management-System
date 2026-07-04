package com.dairyproduct.dao;

import java.util.List;
import com.dairyproduct.dto.Customer;

public interface CustomerDAO {

    boolean registerCustomer(Customer customer);

    Customer login(String email, String password);

    boolean updateCustomer(Customer customer);

    boolean deleteCustomer(int customerId);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

}