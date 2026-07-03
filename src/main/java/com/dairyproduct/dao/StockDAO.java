package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.Stock;

public interface StockDAO {

	boolean addStock(Stock stock);
	
	boolean updateStock(Stock stock);
	
	Stock getStockByProduct(int productId);
	
	List<Stock> getAllStock();
}
