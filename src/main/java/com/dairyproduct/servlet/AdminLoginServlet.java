package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.AdminDAO;
import com.dairyproduct.dao.impl.AdminDAOImpl;
import com.dairyproduct.dto.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    AdminDAO adminDAO = new AdminDAOImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Admin admin = adminDAO.login(email, password);

        if (admin != null) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);

            response.sendRedirect("admin/adminDashboard.jsp");

        } else {

            request.setAttribute("error", "Invalid Email or Password");
            request.getRequestDispatcher("adminLogin.jsp").forward(request, response);

        }
    }
}