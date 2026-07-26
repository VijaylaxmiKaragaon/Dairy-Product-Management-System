package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dao.impl.ProductDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminProducts")
public class AdminProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        ProductDAO dao = new ProductDAOImpl();

        req.setAttribute(
                "products",
                dao.getAllProducts()
        );

        req.getRequestDispatcher(
                "adminProducts.jsp"
        ).forward(req, resp);
    }
}