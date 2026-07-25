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
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class CustomerLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        CustomerDAO dao = new CustomerDAOImpl();

        Customer customer = dao.login(
                req.getParameter("email"),
                req.getParameter("password"));

        if (customer != null) {

            HttpSession session = req.getSession();
            session.setAttribute("customer", customer);

            resp.sendRedirect("home.jsp");

        } else {

            req.setAttribute("error",
                    "Invalid Email or Password");

            req.getRequestDispatcher("login.jsp")
                    .forward(req, resp);
        }
    }
}