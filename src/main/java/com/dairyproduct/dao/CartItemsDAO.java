package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.CartItems;

public interface CartItemsDAO {

    void addCartItem(CartItems item);

    void updateCartItem(CartItems item);

    void removeCartItem(int cartItemId);

    List<CartItems> getCartItems(int cartId);

    double calculateTotal(int cartId);

    void clearCart(int cartId);

}