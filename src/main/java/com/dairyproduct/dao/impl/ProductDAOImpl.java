package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dto.Product;
import com.dairyproduct.utility.Connector;

public class ProductDAOImpl implements ProductDAO {

    private Connection con = Connector.requestConnection();


    // Add Product
    @Override
    public boolean addProduct(Product product) {

        String sql = "INSERT INTO product(category_id, product_name, brand, price, quantity, manufacture_date, expiry_date, description, image) VALUES(?,?,?,?,?,?,?,?,?)";

        try (PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, product.getCategoryId());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getBrand());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5, product.getQuantity());
            ps.setString(6, product.getManufacturedDate());
            ps.setString(7, product.getExpiryDate());
            ps.setString(8, product.getDescription());
            ps.setString(9, product.getImage());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }



    // Update Product
    @Override
    public boolean updateProduct(Product product) {

        String sql = "UPDATE product SET category_id=?, product_name=?, brand=?, price=?, quantity=?, manufacture_date=?, expiry_date=?, description=?, image=? WHERE product_id=?";

        try (PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, product.getCategoryId());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getBrand());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5, product.getQuantity());
            ps.setString(6, product.getManufacturedDate());
            ps.setString(7, product.getExpiryDate());
            ps.setString(8, product.getDescription());
            ps.setString(9, product.getImage());
            ps.setInt(10, product.getProductId());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }



    // Delete Product
    @Override
    public boolean deleteProduct(int productId) {

        String sql = "DELETE FROM product WHERE product_id=?";

        try (PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, productId);

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }



    // Get Product By Id
    @Override
    public Product getProductById(int productId) {

        String sql = "SELECT * FROM product WHERE product_id=?";

        try (PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, productId);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {
                    return mapResultSetToProduct(rs);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }



    // Get All Products
    @Override
    public List<Product> getAllProducts() {

        List<Product> products = new ArrayList<>();

        String sql = "SELECT * FROM product ORDER BY product_id DESC";


        try (PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {


            while (rs.next()) {

                products.add(mapResultSetToProduct(rs));

            }


        } catch (SQLException e) {
            e.printStackTrace();
        }


        return products;
    }



    // Get Products By Category
    @Override
    public List<Product> getProductsByCategory(int categoryId) {

        List<Product> products = new ArrayList<>();

        String sql = "SELECT * FROM product WHERE category_id=?";


        try (PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setInt(1, categoryId);


            try(ResultSet rs = ps.executeQuery()) {


                while(rs.next()) {

                    products.add(mapResultSetToProduct(rs));

                }

            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return products;
    }



    // Search Product
    @Override
    public List<Product> searchProduct(String keyword) {


        List<Product> products = new ArrayList<>();


        String sql = "SELECT * FROM product WHERE product_name LIKE ? OR brand LIKE ?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setString(1, "%" + keyword + "%");
            ps.setString(2, "%" + keyword + "%");


            try(ResultSet rs = ps.executeQuery()) {


                while(rs.next()) {

                    products.add(mapResultSetToProduct(rs));

                }

            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return products;
    }





    // ResultSet to Product Object Conversion
    private Product mapResultSetToProduct(ResultSet rs) throws SQLException {


        Product p = new Product();


        p.setProductId(rs.getInt("product_id"));

        p.setCategoryId(rs.getInt("category_id"));

        p.setProductName(rs.getString("product_name"));

        p.setBrand(rs.getString("brand"));

        p.setPrice(rs.getDouble("price"));

        p.setQuantity(rs.getInt("quantity"));

        p.setManufacturedDate(rs.getString("manufactured_date"));

        p.setExpiryDate(rs.getString("expiry_date"));

        p.setDescription(rs.getString("description"));

        p.setImage(rs.getString("image"));


        return p;

    }

}