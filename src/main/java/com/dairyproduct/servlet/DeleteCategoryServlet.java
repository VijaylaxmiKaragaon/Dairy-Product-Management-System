package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.CategoryDAO;
import com.dairyproduct.dao.impl.CategoryDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteCategory")
public class DeleteCategoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(
                req.getParameter("id"));

        CategoryDAO dao = new CategoryDAOImpl();

        dao.deleteCategory(id);

        resp.sendRedirect("viewCategory");
    }
}