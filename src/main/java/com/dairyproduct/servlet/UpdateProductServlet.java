package com.dairyproduct.servlet;


import java.io.IOException;
import java.sql.Date;


import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dao.impl.ProductDAOImpl;
import com.dairyproduct.dto.Product;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/updateProduct")
public class UpdateProductServlet extends HttpServlet {



protected void doPost(HttpServletRequest req,
HttpServletResponse resp)
throws ServletException,IOException{


Product p = new Product();



p.setProductId(
Integer.parseInt(req.getParameter("productId"))
);


p.setCategoryId(
Integer.parseInt(req.getParameter("categoryId"))
);


p.setProductName(
req.getParameter("productName")
);


p.setBrand(
req.getParameter("brand")
);


p.setPrice(
Double.parseDouble(req.getParameter("price"))
);


p.setQuantity(
Integer.parseInt(req.getParameter("quantity"))
);


p.setManufacturedDate(
Date.valueOf(req.getParameter("manufacturedDate"))
);


p.setExpiryDate(
Date.valueOf(req.getParameter("expiryDate"))
);


p.setDescription(
req.getParameter("description")
);


p.setImage(
req.getParameter("image")
);



ProductDAO dao =
new ProductDAOImpl();



dao.updateProduct(p);



resp.sendRedirect("adminProducts");


}



}