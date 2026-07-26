package com.dairyproduct.servlet;

import java.io.IOException;

import com.dairyproduct.dao.CustomerDAO;
import com.dairyproduct.dao.impl.CustomerDAOImpl;
import com.dairyproduct.dto.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/login")
public class CustomerLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
                          throws ServletException, IOException {
        String email =
                req.getParameter("email");
        String password =
                req.getParameter("password");
        CustomerDAO dao =
                new CustomerDAOImpl();
        Customer customer =
                dao.login(email, password);
        if(customer != null) {
            System.out.println("LOGIN SUCCESS");

            System.out.println("ROLE : "
                    + customer.getRole());
            HttpSession session =
                    req.getSession();
            session.setAttribute(
                    "customer",
                    customer);
            if("ADMIN".equals(customer.getRole())) {
                resp.sendRedirect(
                    req.getContextPath()
                    + "/admin.jsp"
                );
            }
            else {
                resp.sendRedirect(
                    req.getContextPath()
                    + "/home.jsp"
                );
            }
        }
        else {
            System.out.println("LOGIN FAILED");
            resp.sendRedirect(
                req.getContextPath()
                + "/login.jsp?error=invalid"
            );
        }
    }

}