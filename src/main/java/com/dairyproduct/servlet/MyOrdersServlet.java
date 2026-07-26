package com.dairyproduct.servlet;

import java.io.IOException;
import java.util.List;

import com.dairyproduct.dao.OrdersDAO;
import com.dairyproduct.dao.impl.OrdersDAOImpl;
import com.dairyproduct.dto.Customer;
import com.dairyproduct.dto.Orders;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/myOrders")
public class MyOrdersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session =
                req.getSession(false);

        if(session == null) {

            resp.sendRedirect("login.jsp");
            return;
        }

        Customer customer =
                (Customer)session.getAttribute("customer");

        if(customer == null) {

            resp.sendRedirect("login.jsp");
            return;
        }

        OrdersDAO dao =
                new OrdersDAOImpl();

        List<Orders> orders =
                dao.getOrdersByCustomer(
                customer.getCustomerId());

        req.setAttribute(
                "orders",
                orders);

        req.getRequestDispatcher(
                "myOrders.jsp")
                .forward(req, resp);
    }
}