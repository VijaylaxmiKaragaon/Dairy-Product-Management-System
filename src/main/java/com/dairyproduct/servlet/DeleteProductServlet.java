package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dao.impl.ProductDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteProduct")
public class DeleteProductServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        int productId =
                Integer.parseInt(req.getParameter("productId"));

        ProductDAO dao = new ProductDAOImpl();
        dao.deleteProduct(productId);

        resp.sendRedirect("viewProducts");
    }
}