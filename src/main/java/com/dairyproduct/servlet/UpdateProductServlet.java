package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dao.impl.ProductDAOImpl;
import com.dairyproduct.dto.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateProduct")
public class UpdateProductServlet extends HttpServlet{

    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        Product product = new Product();

        product.setProductId(
                Integer.parseInt(req.getParameter("productId")));
        product.setCategoryId(
                Integer.parseInt(req.getParameter("categoryId")));
        product.setProductName(req.getParameter("productName"));
        product.setBrand(req.getParameter("brand"));
        product.setPrice(
                Double.parseDouble(req.getParameter("price")));
        product.setQuantity(
                Integer.parseInt(req.getParameter("quantity")));
        product.setManufactureDate(
                req.getParameter("manufactureDate"));
        product.setExpiryDate(
                req.getParameter("expiryDate"));
        product.setDescription(
                req.getParameter("description"));

        ProductDAO dao = new ProductDAOImpl();
        dao.updateProduct(product);

        resp.sendRedirect("viewProducts");
    }
}