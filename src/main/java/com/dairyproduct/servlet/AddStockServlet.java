package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.StockDAO;
import com.dairyproduct.dao.impl.StockDAOImpl;
import com.dairyproduct.dto.Stock;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addStock")
public class AddStockServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {

        Stock stock = new Stock();

        stock.setProductId(
                Integer.parseInt(req.getParameter("productId")));

        stock.setAvailableQuantity(
                Integer.parseInt(req.getParameter("quantity")));

        stock.setLastUpdated(
                req.getParameter("lastUpdated"));

        StockDAO dao = new StockDAOImpl();

        dao.addStock(stock);

        resp.sendRedirect("viewStock");
    }
}