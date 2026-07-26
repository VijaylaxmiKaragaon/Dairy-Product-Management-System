package com.dairyproduct.servlet;
import java.io.IOException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.dairyproduct.utility.Connector;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/blockCustomer")
public class BlockCustomerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws IOException {

        int id =
            Integer.parseInt(req.getParameter("id"));

        Connection con =
            Connector.requestConnection();

        try {

            PreparedStatement ps =
                con.prepareStatement(
                "UPDATE customer SET status='BLOCKED' WHERE customer_id=?");

            ps.setInt(1, id);

            ps.executeUpdate();

        } catch(Exception e){
            e.printStackTrace();
        }

        resp.sendRedirect("viewCustomers");
    }
}