package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.CategoryDAO;
import com.dairyproduct.dao.impl.CategoryDAOImpl;
import com.dairyproduct.dto.Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/updateCategory")
public class UpdateCategoryServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(
                req.getParameter("categoryId"));

        String name =
                req.getParameter("categoryName");

        String description =
                req.getParameter("description");

        Category category = new Category();

        category.setCategoryId(id);
        category.setCategoryName(name);
        category.setDescription(description);

        CategoryDAO dao = new CategoryDAOImpl();

        dao.updateCategory(category);

        resp.sendRedirect("viewCategory");
    }
}