package com.dairyproduct.dto;

public class Orders {
	private int orderId;
	 private int customerId;
	 private String orderDate;
	 private double totalAmount;
	 private String paymentMethod;
	 private String orderStatus;
	 private String deliveryAddress;
	 
	 public Orders(int orderId, int customerId, String orderDate, double totalAmount, String paymentMethod,
			String orderStatus, String deliveryAddress) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.orderDate = orderDate;
		this.totalAmount = totalAmount;
		this.paymentMethod = paymentMethod;
		this.orderStatus = orderStatus;
		this.deliveryAddress = deliveryAddress;
	 }

	 public Orders() {
		// TODO Auto-generated constructor stub
	}

	 public int getOrderId() {
		 return orderId;
	 }


	 public void setOrderId(int orderId) {
		 this.orderId = orderId;
	 }


	 public int getCustomerId() {
		 return customerId;
	 }


	 public void setCustomerId(int customerId) {
		 this.customerId = customerId;
	 }


	 public String getOrderDate() {
		 return orderDate;
	 }


	 public void setOrderDate(String orderDate) {
		 this.orderDate = orderDate;
	 }


	 public double getTotalAmount() {
		 return totalAmount;
	 }


	 public void setTotalAmount(double totalAmount) {
		 this.totalAmount = totalAmount;
	 }


	 public String getPaymentMethod() {
		 return paymentMethod;
	 }


	 public void setPaymentMethod(String paymentMethod) {
		 this.paymentMethod = paymentMethod;
	 }


	 public String getOrderStatus() {
		 return orderStatus;
	 }


	 public void setOrderStatus(String orderStatus) {
		 this.orderStatus = orderStatus;
	 }


	 public String getDeliveryAddress() {
		 return deliveryAddress;
	 }


	 public void setDeliveryAddress(String deliveryAddress) {
		 this.deliveryAddress = deliveryAddress;
	 }


	 @Override
	 public String toString() {
		return "Orders [orderId=" + orderId + ", customerId=" + customerId + ", orderDate=" + orderDate
				+ ", totalAmount=" + totalAmount + ", paymentMethod=" + paymentMethod + ", orderStatus=" + orderStatus
				+ ", deliveryAddress=" + deliveryAddress + "]";
	 }

}
