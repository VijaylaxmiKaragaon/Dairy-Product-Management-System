package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.PaymentDAO;
import com.dairyproduct.dao.impl.PaymentDAOImpl;
import com.dairyproduct.dto.Payment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updatePayment")
public class UpdatePaymentServlet extends HttpServlet{

    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        Payment payment = new Payment();

        payment.setPaymentId(
                Integer.parseInt(req.getParameter("paymentId")));

        payment.setOrderId(
                Integer.parseInt(req.getParameter("orderId")));

        payment.setPaymentMode(
                req.getParameter("paymentMode"));

        payment.setTransactionId(
                req.getParameter("transactionId"));

        payment.setPaymentStatus(
                req.getParameter("paymentStatus"));

        payment.setPaymentDate(
                req.getParameter("paymentDate"));

        PaymentDAO dao = new PaymentDAOImpl();

        dao.updatePayment(payment);

        resp.sendRedirect("viewPayment");
    }
}