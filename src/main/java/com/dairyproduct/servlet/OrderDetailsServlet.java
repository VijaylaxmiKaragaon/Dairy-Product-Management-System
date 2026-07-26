package com.dairyproduct.servlet;

import java.io.IOException;
import java.util.List;

import com.dairyproduct.dao.OrderDetailsDAO;
import com.dairyproduct.dao.impl.OrderDetailsDAOImpl;
import com.dairyproduct.dto.OrderDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/orderDetails")
public class OrderDetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        int orderId =
                Integer.parseInt(
                        req.getParameter("orderId"));

        OrderDetailsDAO dao =
                new OrderDetailsDAOImpl();

        List<OrderDetails> details =
                dao.getOrderDetails(orderId);

        req.setAttribute(
                "details",
                details);

        req.setAttribute(
                "orderId",
                orderId);

        req.getRequestDispatcher(
                "orderDetails.jsp")
                .forward(req, resp);
    }
}