package com.dairyproduct.servlet;

import java.io.IOException;
import java.util.List;

import com.dairyproduct.dao.CartDAO;
import com.dairyproduct.dao.CartItemsDAO;
import com.dairyproduct.dao.impl.CartDAOImpl;
import com.dairyproduct.dao.impl.CartItemsDAOImpl;
import com.dairyproduct.dto.Cart;
import com.dairyproduct.dto.CartItems;
import com.dairyproduct.dto.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/viewCart")
public class ViewCartServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {


        HttpSession session = req.getSession();



        Customer customer =
        (Customer) session.getAttribute("customer");



        if(customer == null){

            resp.sendRedirect("login.jsp");
            return;

        }



        int customerId =
        customer.getCustomerId();



        System.out.println(
            "Logged Customer ID : "
            + customerId
        );



        CartDAO cartDAO =
        new CartDAOImpl();



        Cart cart =
        cartDAO.getCartByCustomerId(customerId);




        List<CartItems> cartItems = null;

        double total = 0;




        if(cart != null){


            int cartId =
            cart.getCartId();



            System.out.println(
                "Cart ID : "
                + cartId
            );



            CartItemsDAO itemsDAO =
            new CartItemsDAOImpl();



            cartItems =
            itemsDAO.getCartItems(cartId);



            total =
            itemsDAO.calculateTotal(cartId);



            System.out.println(
                "Cart Items Count : "
                + cartItems.size()
            );


        }
        else{


            System.out.println(
                "No Cart Found"
            );


        }





        req.setAttribute(
            "cartItems",
            cartItems
        );



        req.setAttribute(
            "total",
            total
        );



        req.getRequestDispatcher(
            "cart.jsp"
        )
        .forward(req, resp);



    }


}