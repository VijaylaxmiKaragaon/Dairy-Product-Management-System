package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.StockDAO;
import com.dairyproduct.dao.impl.StockDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewStock")
public class ViewStockServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        StockDAO dao = new StockDAOImpl();

        req.setAttribute("stocks",
                dao.getAllStock());

        req.getRequestDispatcher("viewStock.jsp")
                .forward(req, resp);
    }
}