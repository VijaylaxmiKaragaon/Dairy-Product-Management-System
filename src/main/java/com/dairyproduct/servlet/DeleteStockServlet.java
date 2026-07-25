package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.StockDAO;
import com.dairyproduct.dao.impl.StockDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteStock")
public class DeleteStockServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        int stockId =
                Integer.parseInt(req.getParameter("stockId"));

        StockDAO dao = new StockDAOImpl();

        dao.deleteStock(stockId);

        resp.sendRedirect("viewStock");
    }
}