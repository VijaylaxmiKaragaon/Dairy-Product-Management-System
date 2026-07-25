package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.CartItemsDAO;
import com.dairyproduct.dao.impl.CartItemsDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/clearCart")
public class ClearCartServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        int cartId =
                Integer.parseInt(req.getParameter("cartId"));

        CartItemsDAO dao = new CartItemsDAOImpl();

        dao.clearCart(cartId);

        resp.sendRedirect("cart.jsp");
    }
}