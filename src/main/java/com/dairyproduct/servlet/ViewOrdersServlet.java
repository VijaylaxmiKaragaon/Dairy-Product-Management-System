package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.OrdersDAO;
import com.dairyproduct.dao.impl.OrdersDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewOrders")
public class ViewOrdersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        int customerId =
                Integer.parseInt(req.getParameter("customerId"));

        OrdersDAO dao = new OrdersDAOImpl();

        req.setAttribute("orders",
                dao.getOrdersByCustomer(customerId));

        req.getRequestDispatcher("orders.jsp")
                .forward(req, resp);
    }
}