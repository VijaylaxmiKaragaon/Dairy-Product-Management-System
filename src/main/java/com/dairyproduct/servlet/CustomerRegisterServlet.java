package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.CustomerDAO;
import com.dairyproduct.dao.impl.CustomerDAOImpl;
import com.dairyproduct.dto.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class CustomerRegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        Customer customer = new Customer();

        customer.setName(req.getParameter("name"));
        customer.setEmail(req.getParameter("email"));
        customer.setPhone(req.getParameter("phone"));
        customer.setAddress(req.getParameter("address"));
        customer.setPassword(req.getParameter("password"));

        CustomerDAO dao = new CustomerDAOImpl();

        if (dao.registerCustomer(customer)) {
            resp.sendRedirect("login.jsp");
        } else {
            req.setAttribute("error", "Registration Failed");
            req.getRequestDispatcher("register.jsp")
                    .forward(req, resp);
        }
    }
}