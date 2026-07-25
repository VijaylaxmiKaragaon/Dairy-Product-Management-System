package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.OrdersDAO;
import com.dairyproduct.dao.impl.OrdersDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cancelOrder")
public class CancelOrderServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        int orderId =
                Integer.parseInt(req.getParameter("orderId"));

        OrdersDAO dao = new OrdersDAOImpl();

        dao.deleteOrder(orderId);

        resp.sendRedirect("viewOrders");
    }
}