package com.dairyproduct.servlet;

import java.io.IOException;
import java.util.List;

import com.dairyproduct.dao.CategoryDAO;
import com.dairyproduct.dao.impl.CategoryDAOImpl;
import com.dairyproduct.dto.Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewCategory")
public class ViewCategoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        CategoryDAO dao = new CategoryDAOImpl();

        List<Category> categories = dao.getAllCategories();

        req.setAttribute("categories", categories);

        req.getRequestDispatcher("viewCategory.jsp")
           .forward(req, resp);
    }
}