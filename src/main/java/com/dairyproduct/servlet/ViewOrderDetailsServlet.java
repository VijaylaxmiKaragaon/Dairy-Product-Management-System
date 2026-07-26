package com.dairyproduct.servlet;

import java.awt.List;
import java.io.IOException;

import com.dairyproduct.dao.OrderDetailsDAO;
import com.dairyproduct.dao.OrdersDAO;
import com.dairyproduct.dao.impl.OrderDetailsDAOImpl;
import com.dairyproduct.dao.impl.OrdersDAOImpl;
import com.dairyproduct.dto.Orders;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/viewOrderDetails")
public class ViewOrderDetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        OrdersDAO dao = new OrdersDAOImpl();

        java.util.List<Orders> orders =
                dao.getAllOrders();

        req.setAttribute("orders", orders);

        req.getRequestDispatcher(
                "viewOrders.jsp")
                .forward(req, resp);
    }
}