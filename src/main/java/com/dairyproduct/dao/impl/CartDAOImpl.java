package com.dairyproduct.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.dairyproduct.dao.CartDAO;
import com.dairyproduct.dto.Cart;
import com.dairyproduct.utility.Connector;

public class CartDAOImpl implements CartDAO {
    private Connection con;
    public CartDAOImpl() {
        con = Connector.requestConnection();
    }
    // Create Cart
    @Override
    public boolean createCart(int customerId) {
        String sql =
        "INSERT INTO cart(customer_id, created_at) VALUES(?, NOW())";
        try(PreparedStatement ps =
                con.prepareStatement(sql)){
            ps.setInt(1, customerId);
            return ps.executeUpdate() > 0;
        }catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    // Get Cart By Customer Id
    @Override
    public Cart getCartByCustomerId(int customerId) {
        String sql =
        "SELECT * FROM cart WHERE customer_id=?";
        try(PreparedStatement ps =
                con.prepareStatement(sql)){
            ps.setInt(1, customerId);
            try(ResultSet rs =
                    ps.executeQuery()){
                if(rs.next()){
                    Cart cart = new Cart();
                    cart.setCartId(
                            rs.getInt("cart_id")
                    );
                    cart.setCustomerId(
                            rs.getInt("customer_id")
                    );
                    cart.setCreatedAt(
                            rs.getString("created_at")
                    );
                    return cart;
                }
            }
        }catch(SQLException e){

            e.printStackTrace();
        }
        return null;

    }
 // Add To Cart
    @Override
    public boolean addToCart(Cart cart) {
        try {
            String checkCart =
            "SELECT cart_id FROM cart WHERE customer_id=?";
            PreparedStatement ps1 =
            con.prepareStatement(checkCart);
            ps1.setInt(1, cart.getCustomerId());
            ResultSet rs =
            ps1.executeQuery();
            int cartId;
            if(rs.next()) {
                cartId = rs.getInt("cart_id");
            }
            else {
                String createCart =
                "INSERT INTO cart(customer_id,created_at) VALUES(?,NOW())";
                PreparedStatement ps2 =
                con.prepareStatement(
                    createCart,
                    java.sql.Statement.RETURN_GENERATED_KEYS
                );
                ps2.setInt(1, cart.getCustomerId());
                ps2.executeUpdate();
                ResultSet keys =
                ps2.getGeneratedKeys();
                if(keys.next()) {
                    cartId = keys.getInt(1);
                }
                else {
                    return false;
                }
            }
            String sql =
            "INSERT INTO cart_items(cart_id,product_id,quantity,price,subtotal) VALUES(?,?,?,?,?)";
            PreparedStatement ps3 =
            con.prepareStatement(sql);
            ps3.setInt(1, cartId);
            ps3.setInt(2, cart.getProductId());
            ps3.setInt(3, cart.getQuantity());
            ps3.setDouble(4, cart.getPrice());
            ps3.setDouble(5,
                    cart.getPrice()*cart.getQuantity());
            return ps3.executeUpdate() > 0;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    // Delete Cart
    @Override
    public boolean deleteCart(int cartId) {


        String sql =
        "DELETE FROM cart WHERE cart_id=?";



        try(PreparedStatement ps =
                con.prepareStatement(sql)){


            ps.setInt(1, cartId);



            return ps.executeUpdate() > 0;



        }catch(SQLException e){

            e.printStackTrace();

        }


        return false;

    }


}