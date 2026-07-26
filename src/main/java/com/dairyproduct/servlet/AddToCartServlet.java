package com.dairyproduct.servlet;


import java.io.IOException;

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



@WebServlet("/addToCart")
public class AddToCartServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
                          throws ServletException, IOException {


        try {


            HttpSession session = req.getSession();



            Customer customer =
                    (Customer) session.getAttribute("customer");



            // Check login
            if(customer == null){

                resp.sendRedirect("login.jsp");
                return;

            }




            int productId =
                    Integer.parseInt(
                    req.getParameter("productId"));



            int quantity =
                    Integer.parseInt(
                    req.getParameter("quantity"));



            double price =
                    Double.parseDouble(
                    req.getParameter("price"));




            System.out.println("Customer ID : "
                    + customer.getCustomerId());


            System.out.println("Product ID : "
                    + productId);


            System.out.println("Quantity : "
                    + quantity);


            System.out.println("Price : "
                    + price);




            /*
             * STEP 1:
             * Check customer cart exists
             */

            CartDAO cartDAO =
                    new CartDAOImpl();



            Cart cart =
                    cartDAO.getCartByCustomerId(
                            customer.getCustomerId()
                    );




            /*
             * STEP 2:
             * Create cart if not exists
             */

            if(cart == null){


                boolean created =
                        cartDAO.createCart(
                                customer.getCustomerId()
                        );



                if(created){


                    cart =
                    cartDAO.getCartByCustomerId(
                            customer.getCustomerId()
                    );


                }

            }





            if(cart == null){


                System.out.println(
                        "Cart creation failed"
                );


                resp.sendRedirect(
                        "viewProducts"
                );

                return;

            }





            /*
             * STEP 3:
             * Insert into cart_items
             */


            CartItems item =
                    new CartItems();



            item.setCartId(
                    cart.getCartId()
            );


            item.setProductId(
                    productId
            );


            item.setQuantity(
                    quantity
            );


            item.setPrice(
                    price
            );


            item.setSubtotal(
                    price * quantity
            );





            CartItemsDAO cartItemsDAO =
                    new CartItemsDAOImpl();




            cartItemsDAO.addCartItem(item);





            System.out.println(
                    "Added To Cart Successfully"
            );



            resp.sendRedirect(
                    "viewCart"
            );




        }
        catch(Exception e){


            e.printStackTrace();


            resp.sendRedirect(
                    "viewProducts"
            );

        }


    }





    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
                         throws ServletException, IOException {


        doPost(req, resp);

    }

}