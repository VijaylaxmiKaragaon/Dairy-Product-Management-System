package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dao.impl.ProductDAOImpl;
import com.dairyproduct.dto.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/viewProducts")
public class ViewProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
                         throws ServletException, IOException {

        ProductDAO dao = new ProductDAOImpl();

        req.setAttribute(
            "products",
            dao.getAllProducts()
        );

        HttpSession session = req.getSession();

        Customer customer =
            (Customer) session.getAttribute("customer");

        if(customer != null &&
           "ADMIN".equals(customer.getRole())) {

            req.getRequestDispatcher("adminProducts.jsp")
               .forward(req, resp);

        } else {

            req.getRequestDispatcher("viewProducts.jsp")
               .forward(req, resp);
        }
    }
}