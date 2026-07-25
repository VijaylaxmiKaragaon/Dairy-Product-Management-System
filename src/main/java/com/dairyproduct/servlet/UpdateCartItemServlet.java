package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.CartItemsDAO;
import com.dairyproduct.dao.impl.CartItemsDAOImpl;
import com.dairyproduct.dto.CartItems;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateCart")
public class UpdateCartItemServlet extends HttpServlet{

    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        CartItems item = new CartItems();

        item.setCartItemsId(
                Integer.parseInt(req.getParameter("cartItemId")));

        int qty =
                Integer.parseInt(req.getParameter("quantity"));

        double price =
                Double.parseDouble(req.getParameter("price"));

        item.setQuantity(qty);
        item.setPrice(price);
        item.setSubtotal(qty * price);

        CartItemsDAO dao = new CartItemsDAOImpl();

        dao.updateCartItem(item);

        resp.sendRedirect("viewCart");
    }
}