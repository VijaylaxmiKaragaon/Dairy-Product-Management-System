package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.CartItemsDAO;
import com.dairyproduct.dto.CartItems;
import com.dairyproduct.utility.Connector;

public class CartItemsDAOImpl implements CartItemsDAO {
   
	private Connection con;
	
	public CartItemsDAOImpl() {
		this.con=Connector.requestConnection();
	}
	
	
	@Override
	public void addCartItem(CartItems item) {
		String sql = "INSERT INTO cart_items(cart_id, product_id, quantity, price, subtotal) VALUES(0,?,?,?,?,?)";
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setInt(1, item.getCartId());
			ps.setInt(2, item.getProductId());
			ps.setInt(3, item.getQuantity());
			ps.setDouble(4, item.getPrice());
			ps.setDouble(5, item.getSubtotal());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateCartItem(CartItems item) {
		String sql = "UPDATE cart_items SET quantity=?, price=?, subTotal=? WHERE cart_item_id=?";
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setInt(1, item.getQuantity());
			ps.setDouble(2, item.getPrice());
			ps.setDouble(3, item.getSubtotal());
			ps.setInt(4, item.getCartItemsId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void removeCartItem(int cartItemId) {
		String sql = "DELETE FROM cart_items WHERE cart_item_id=?";
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setInt(1, cartItemId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<CartItems> getCartItems(int cartId) {
		List<CartItems> list = new ArrayList<>();
		CartItems item = null;
		String sql = "SELECT * FROM cart_items WHERE cart_id=?";
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setInt(1, cartId);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				item = new CartItems();
				
				item.setCartItemsId(rs.getInt("cart_item_id"));
				item.setCartId(rs.getInt("cartId"));
				item.setProductId(rs.getInt("product_id"));
				item.setQuantity(rs.getInt("quantity"));
				item.setPrice(rs.getDouble("price"));
				item.setSubtotal(rs.getDouble("subtotal"));
				list.add(item);
			} 
		} catch (SQLException e) {
            e.printStackTrace();
        }
		return list;
	}

	@Override
	public double calculateTotal(int cartId) {
		String sql = "SELECT SUM(subtotal) as total FROM cart_items WHERE cart_id=?";
		try(PreparedStatement ps = con.prepareStatement(sql)){
			ps.setInt(1, cartId);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getDouble("total");
			}
		} catch (SQLException e) {
            e.printStackTrace();
        }
		return 0;
	}

	@Override
	public void clearCart(int cartId) {
		String query = "DELETE FROM cart_items WHERE cart_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, cartId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

	}

}
