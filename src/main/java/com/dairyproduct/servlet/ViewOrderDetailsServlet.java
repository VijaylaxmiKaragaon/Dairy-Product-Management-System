package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.OrderDetailsDAO;
import com.dairyproduct.dao.impl.OrderDetailsDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewOrderDetails")
public class ViewOrderDetailsServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        int orderId =
                Integer.parseInt(req.getParameter("orderId"));

        OrderDetailsDAO dao =
                new OrderDetailsDAOImpl();

        req.setAttribute("orderDetails",
                dao.getOrderDetails(orderId));

        req.getRequestDispatcher("orderDetails.jsp")
                .forward(req, resp);
    }
}