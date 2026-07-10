package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dairyproduct.dao.CartDAO;
import com.dairyproduct.dto.Cart;
import com.dairyproduct.utility.Connector;

public class CartDAOImpl implements CartDAO {

    private Connection con = Connector.requestConnection();

    @Override
    public boolean createCart(int customerId) {

        String sql = "INSERT INTO cart(customer_id,created_at) VALUES(?,NOW())";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, customerId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Cart getCartByCustomerId(int customerId) {

        String sql = "SELECT * FROM cart WHERE customer_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, customerId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Cart cart = new Cart();

                cart.setCartId(rs.getInt("cart_id"));
                cart.setCustomerId(rs.getInt("customer_id"));
                cart.setCreatedAt(rs.getString("created_at"));

                return cart;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return null;
    }

    @Override
    public boolean deleteCart(int cartId) {

        String sql = "DELETE FROM cart WHERE cart_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, cartId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return false;
    }

}