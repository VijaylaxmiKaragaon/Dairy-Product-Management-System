
package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.OrdersDAO;
import com.dairyproduct.dao.impl.CustomerDAOImpl;
import com.dairyproduct.dao.impl.OrdersDAOImpl;
import com.dairyproduct.dao.impl.ProductDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/revenueDashboard")
public class RevenueDashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        OrdersDAOImpl orderDAO =
                new OrdersDAOImpl();

        CustomerDAOImpl customerDAO =
                new CustomerDAOImpl();

        ProductDAOImpl productDAO =
                new ProductDAOImpl();

        req.setAttribute(
                "revenue",
                orderDAO.getTotalRevenue());

        req.setAttribute(
                "orders",
                orderDAO.getTotalOrders());

        req.setAttribute(
                "customers",
                customerDAO.getTotalCustomers());

        req.setAttribute(
                "products",
                productDAO.getTotalProducts());

        req.getRequestDispatcher(
                "revenueDashboard.jsp")
                .forward(req, resp);
    }
}