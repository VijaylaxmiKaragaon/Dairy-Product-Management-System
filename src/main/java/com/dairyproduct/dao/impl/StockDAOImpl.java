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



    // Add Stock
    @Override
    public void addStock(Stock stock) {

        String query = "INSERT INTO stock(product_id, available_quantity, last_updated) VALUES(?,?,?)";

        try(PreparedStatement ps = con.prepareStatement(query)) {

            ps.setInt(1, stock.getProductId());
            ps.setInt(2, stock.getAvailableQuantity());
            ps.setString(3, stock.getLastUpdated());

            ps.executeUpdate();

        } catch(SQLException e) {
            e.printStackTrace();
        }
    }



    // Update Stock
    @Override
    public void updateStock(Stock stock) {

        String query = "UPDATE stock SET product_id=?, available_quantity=?, last_updated=? WHERE stock_id=?";


        try(PreparedStatement ps = con.prepareStatement(query)) {


            ps.setInt(1, stock.getProductId());

            ps.setInt(2, stock.getAvailableQuantity());

            ps.setString(3, stock.getLastUpdated());

            ps.setInt(4, stock.getStockId());


            ps.executeUpdate();


        } catch(SQLException e) {

            e.printStackTrace();

        }
    }




    // Delete Stock
    @Override
    public void deleteStock(int stockId) {


        String query = "DELETE FROM stock WHERE stock_id=?";


        try(PreparedStatement ps = con.prepareStatement(query)) {


            ps.setInt(1, stockId);

            ps.executeUpdate();


        } catch(SQLException e) {

            e.printStackTrace();

        }

    }




    // Get Stock By Id
    @Override
    public Stock getStockById(int stockId) {


        String query = "SELECT * FROM stock WHERE stock_id=?";


        try(PreparedStatement ps = con.prepareStatement(query)) {


            ps.setInt(1, stockId);


            try(ResultSet rs = ps.executeQuery()) {


                if(rs.next()) {

                    return mapResultSetToStock(rs);

                }

            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return null;

    }




    // Get Stock By Product Id
    @Override
    public Stock getStockByProductId(int productId) {


        String query = "SELECT * FROM stock WHERE product_id=?";


        try(PreparedStatement ps = con.prepareStatement(query)) {


            ps.setInt(1, productId);


            try(ResultSet rs = ps.executeQuery()) {


                if(rs.next()) {

                    return mapResultSetToStock(rs);

                }

            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return null;

    }




    // Get All Stock
    @Override
    public List<Stock> getAllStock() {


        List<Stock> stockList = new ArrayList<>();


        String query = "SELECT * FROM stock ORDER BY stock_id DESC";


        try(PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery()) {


            while(rs.next()) {


                stockList.add(mapResultSetToStock(rs));


            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return stockList;

    }





    // Convert ResultSet into Stock Object
    private Stock mapResultSetToStock(ResultSet rs) throws SQLException {


        Stock stock = new Stock();


        stock.setStockId(rs.getInt("stock_id"));

        stock.setProductId(rs.getInt("product_id"));

        stock.setAvailableQuantity(rs.getInt("available_quantity"));


        if(rs.getDate("last_updated") != null) {

            stock.setLastUpdated(
                rs.getDate("last_updated").toString()
            );

        }


        return stock;

    }

}