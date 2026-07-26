package com.dairyproduct.servlet;

import java.io.IOException;
import java.util.List;

import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dao.impl.ProductDAOImpl;
import com.dairyproduct.dto.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/searchProduct")
public class SearchProductServlet
extends HttpServlet {

    protected void doGet(
            HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        String keyword =
                req.getParameter("keyword");

        ProductDAO dao =
                new ProductDAOImpl();

        List<Product> products =
                dao.searchProduct(keyword);

        req.setAttribute(
                "products",
                products);

        req.getRequestDispatcher(
                "searchProduct.jsp")
                .forward(req, resp);
    }
}