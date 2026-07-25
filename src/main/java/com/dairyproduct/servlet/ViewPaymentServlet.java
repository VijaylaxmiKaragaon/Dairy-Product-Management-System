package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.PaymentDAO;
import com.dairyproduct.dao.impl.PaymentDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewPayment")
public class ViewPaymentServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        int orderId =
                Integer.parseInt(req.getParameter("orderId"));

        PaymentDAO dao = new PaymentDAOImpl();

        req.setAttribute("payment",
                dao.getPaymentByOrderId(orderId));

        req.getRequestDispatcher("payment.jsp")
                .forward(req, resp);
    }
}