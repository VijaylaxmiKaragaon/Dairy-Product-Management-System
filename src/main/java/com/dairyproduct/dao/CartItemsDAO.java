package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.CartItems;

public interface CartItemsDAO {

    boolean addCartItem(CartItems item);

    boolean updateCartItem(CartItems item);

    boolean removeCartItem(int cartItemId);

    List<CartItems> getCartItems(int cartId);

    double calculateTotal(int cartId);

    void clearCart(int cartId);

}