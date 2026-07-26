package com.dairyproduct.servlet;


import java.io.IOException;

import com.dairyproduct.dao.CartItemsDAO;
import com.dairyproduct.dao.impl.CartItemsDAOImpl;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/removeCartItem")
public class RemoveCartItemServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
                         throws ServletException, IOException {


        try {


            int cartItemId =
                    Integer.parseInt(
                    req.getParameter("cartItemId"));



            System.out.println(
                    "Removing Cart Item ID : "
                    + cartItemId
            );



            CartItemsDAO dao =
                    new CartItemsDAOImpl();



            dao.removeCartItem(cartItemId);



            resp.sendRedirect(
                    "viewCart"
            );



        }
        catch(Exception e){


            e.printStackTrace();


            resp.sendRedirect(
                    "viewCart"
            );

        }


    }

}