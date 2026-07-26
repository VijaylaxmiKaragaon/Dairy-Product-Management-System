package com.dairyproduct.servlet;
import java.io.IOException;

import com.dairyproduct.dao.CustomerDAO;
import com.dairyproduct.dao.impl.CustomerDAOImpl;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteCustomer")
public class DeleteCustomerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws IOException {

        int customerId =
                Integer.parseInt(
                req.getParameter("id"));

        CustomerDAO dao =
                new CustomerDAOImpl();

        dao.deleteCustomer(customerId);

        resp.sendRedirect("viewCustomers");
    }
}