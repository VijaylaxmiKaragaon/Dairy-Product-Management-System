package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.Stock;

public interface StockDAO {

	    void addStock(Stock stock);

	    void updateStock(Stock stock);

	    void deleteStock(int stockId);

	    Stock getStockById(int stockId);

	    Stock getStockByProductId(int productId);

	    List<Stock> getAllStock();
}
