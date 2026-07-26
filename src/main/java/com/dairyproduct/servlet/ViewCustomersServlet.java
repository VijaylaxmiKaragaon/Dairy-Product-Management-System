package com.dairyproduct.servlet;
import java.io.IOException;

import com.dairyproduct.dao.CustomerDAO;
import com.dairyproduct.dao.impl.CustomerDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewCustomers")
public class ViewCustomersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        CustomerDAO dao =
                new CustomerDAOImpl();

        req.setAttribute(
                "customers",
                dao.getAllCustomers());

        req.getRequestDispatcher(
                "viewCustomers.jsp")
                .forward(req, resp);
    }
}