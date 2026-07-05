package com.dairyproduct.dto;

public class Stock {
	private int stockId;
    private int productId;
    private int availableQuantity;
    private String lastUpdated;
    
	public Stock(int stockId, int productId, int availableQuantity, String lastUpdated) {
		super();
		this.stockId = stockId;
		this.productId = productId;
		this.availableQuantity = availableQuantity;
		this.lastUpdated = lastUpdated;
	}

	public Stock() {
		// TODO Auto-generated constructor stub
	}

	public int getStockId() {
		return stockId;
	}

	public void setStockId(int stockId) {
		this.stockId = stockId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getAvailableQuantity() {
		return availableQuantity;
	}

	public void setAvailableQuantity(int availableQuantity) {
		this.availableQuantity = availableQuantity;
	}

	public String getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(String lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	@Override
	public String toString() {
		return "Stock [stockId=" + stockId + ", productId=" + productId + ", availableQuantity=" + availableQuantity
				+ ", lastUpdated=" + lastUpdated + "]";
	}
    
}
