package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.CartItems;

public interface CartItemsDAO {


    // Add item into cart_items table
    void addCartItem(CartItems item);
    // Update quantity
    void updateCartItem(CartItems item);
    // Remove item
    void removeCartItem(int cartItemsId);
    // Get all items of a cart
    List<CartItems> getCartItems(int cartId);

    // Calculate total amount
    double calculateTotal(int cartId);

    // Clear cart after order
    void clearCart(int cartId);
    // Get cart items by customer
    List<CartItems> getCartItemsByCustomer(int customerId);

}