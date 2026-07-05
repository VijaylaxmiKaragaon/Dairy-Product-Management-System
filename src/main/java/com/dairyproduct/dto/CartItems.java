package com.dairyproduct.dto;

public class CartItems {
	private int cartItemsId;
    private int cartId;
    private int productId;
    private int quantity;
    private double price;
    private double subtotal;
    
	public CartItems(int cartItemsId, int cartId, int productId, int quantity, double price, double subtotal) {
		super();
		this.cartItemsId = cartItemsId;
		this.cartId = cartId;
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
		this.subtotal = subtotal;
	}

	public CartItems() {
		// TODO Auto-generated constructor stub
	}

	public int getCartItemsId() {
		return cartItemsId;
	}

	public void setCartItemsId(int cartItemsId) {
		this.cartItemsId = cartItemsId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	@Override
	public String toString() {
		return "CartItems [cartItemsId=" + cartItemsId + ", cartId=" + cartId + ", productId=" + productId
				+ ", quantity=" + quantity + ", price=" + price + ", subtotal=" + subtotal + "]";
	}
    
    
}
