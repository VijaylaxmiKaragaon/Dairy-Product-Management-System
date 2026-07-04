package com.dairyproduct.dao;

import com.dairyproduct.dto.Cart;

public interface CartDAO {

    boolean createCart(int customerId);

    Cart getCartByCustomerId(int customerId);

    boolean deleteCart(int cartId);

}