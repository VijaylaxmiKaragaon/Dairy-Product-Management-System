package com.dairyproduct.servlet;

import java.io.IOException;
import java.util.List;

import com.dairyproduct.dao.OrdersDAO;
import com.dairyproduct.dao.impl.OrdersDAOImpl;
import com.dairyproduct.dto.Orders;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewOrders")
public class ViewOrdersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        OrdersDAO dao = new OrdersDAOImpl();

        List<Orders> orders = dao.getAllOrders();

        req.setAttribute("orders", orders);

        req.getRequestDispatcher("orders.jsp")
           .forward(req, resp);
    }
}