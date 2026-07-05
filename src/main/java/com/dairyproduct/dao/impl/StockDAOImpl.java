package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.StockDAO;
import com.dairyproduct.dto.Stock;
import com.dairyproduct.utility.Connector;

public class StockDAOImpl implements StockDAO {
	    private Connection con;
	    public StockDAOImpl() {
	        con = Connector.requestConnection();
	    }

	@Override
	public void addStock(Stock stock) {
		String query = "INSERT INTO stock(product_id, available_quantity, last_updated) VALUES(?,?,?)";
        try(PreparedStatement ps = con.prepareStatement(query)){
            ps.setInt(1, stock.getProductId());
            ps.setInt(2, stock.getAvailableQuantity());
            ps.setString(3, stock.getLastUpdated());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

	@Override
	public void updateStock(Stock stock) {
		  String query = "UPDATE stock SET product_id=?, available_quantity=?, last_updated=? WHERE stock_id=?";
	        try(PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, stock.getProductId());
	            ps.setInt(2, stock.getAvailableQuantity());
	            ps.setString(3, stock.getLastUpdated());
	            ps.setInt(4, stock.getStockId());
	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	@Override
	public void deleteStock(int stockId) {
		 String query = "DELETE FROM stock WHERE stock_id=?";
	        try(PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, stockId);
	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

	@Override
	public Stock getStockById(int stockId) {
        String query = "SELECT * FROM stock WHERE stock_id=?";
        Stock stock = null;
        try(PreparedStatement ps = con.prepareStatement(query)){
            ps.setInt(1, stockId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                stock = new Stock();
                stock.setStockId(rs.getInt("stock_id"));
                stock.setProductId(rs.getInt("product_id"));
                stock.setAvailableQuantity(rs.getInt("available_quantity"));
                stock.setLastUpdated(rs.getDate("last_updated").toString());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}

	@Override
	public Stock getStockByProductId(int productId) {
		 String query = "SELECT * FROM stock WHERE product_id=?";
		 Stock stock = null;
	        try(PreparedStatement ps = con.prepareStatement(query)){
	            ps.setInt(1, productId);
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                stock = new Stock();
	                stock.setStockId(rs.getInt("stock_id"));
	                stock.setProductId(rs.getInt("product_id"));
	                stock.setAvailableQuantity(rs.getInt("available_quantity"));
	                stock.setLastUpdated(rs.getDate("last_updated").toString());
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return null;
	}

	@Override
	public List<Stock> getAllStock() {
		    List<Stock> stockList = new ArrayList<>();
	        String query = "SELECT * FROM stock";
	        Stock stock = null;
	        try(PreparedStatement ps = con.prepareStatement(query)){
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                stock = new Stock();
	                stock.setStockId(rs.getInt("stock_id"));
	                stock.setProductId(rs.getInt("product_id"));
	                stock.setAvailableQuantity(rs.getInt("available_quantity"));
	                stock.setLastUpdated(rs.getDate("last_updated").toString());
	                stockList.add(stock);
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return stockList;
	}

}
