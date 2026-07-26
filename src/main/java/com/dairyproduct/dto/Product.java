package com.dairyproduct.dto;

import java.sql.Date;

public class Product {

    private int productId;
    private int categoryId;
    private String productName;
    private String brand;
    private double price;
    private int quantity;
    private Date manufacturedDate;
    private Date expiryDate;
    private String description;
    private String image;


	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public void setManufacturedDate(Date date) {
		this.manufacturedDate = date;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date date) {
		this.expiryDate = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getManufacturedDate() {
		// TODO Auto-generated method stub
		return null;
	}


    
}