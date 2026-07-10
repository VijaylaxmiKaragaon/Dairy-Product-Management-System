package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.ProductDAO;
import com.dairyproduct.dto.Product;
import com.dairyproduct.utility.Connector;

public class ProductDAOImpl implements ProductDAO {

    private Connection con = Connector.requestConnection();

    @Override
    public boolean addProduct(Product product) {

        String sql = "INSERT INTO product(category_id,product_name,brand,price,quantity,manufacture_date,expiry_date,description,image) VALUES(?,?,?,?,?,?,?,?,?)";

        
        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, product.getCategoryId());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getBrand());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5, product.getQuantity());
            ps.setString(6, product.getManufactureDate());
            ps.setString(7, product.getExpiryDate());
            ps.setString(8, product.getDescription());
            ps.setString(9, product.getImage());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean updateProduct(Product product) {

        String sql = "UPDATE product SET category_id=?,product_name=?,brand=?,price=?,quantity=?,manufacture_date=?,expiry_date=?,description=?,image=? WHERE product_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, product.getCategoryId());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getBrand());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5, product.getQuantity());
            ps.setString(6, product.getManufactureDate());
            ps.setString(7, product.getExpiryDate());
            ps.setString(8, product.getDescription());
            ps.setString(9, product.getImage());
            ps.setInt(10, product.getProductId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean deleteProduct(int productId) {

        String sql = "DELETE FROM product WHERE product_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, productId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Product getProductById(int productId) {

        String sql = "SELECT * FROM product WHERE product_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, productId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Product p = new Product();

                p.setProductId(rs.getInt("product_id"));
                p.setCategoryId(rs.getInt("category_id"));
                p.setProductName(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getDouble("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setManufactureDate(rs.getString("manufacture_date"));
                p.setExpiryDate(rs.getString("expiry_date"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));

                return p;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Product> getAllProducts() {

        List<Product> list = new ArrayList<>();

        String sql = "SELECT * FROM product";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Product p = new Product();

                p.setProductId(rs.getInt("product_id"));
                p.setCategoryId(rs.getInt("category_id"));
                p.setProductName(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getDouble("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setManufactureDate(rs.getString("manufacture_date"));
                p.setExpiryDate(rs.getString("expiry_date"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Product> getProductsByCategory(int categoryId) {

        List<Product> list = new ArrayList<>();

        String sql = "SELECT * FROM product WHERE category_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, categoryId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Product p = new Product();

                p.setProductId(rs.getInt("product_id"));
                p.setCategoryId(rs.getInt("category_id"));
                p.setProductName(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getDouble("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setManufactureDate(rs.getString("manufacture_date"));
                p.setExpiryDate(rs.getString("expiry_date"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Product> searchProduct(String keyword) {

        List<Product> list = new ArrayList<>();

        String sql = "SELECT * FROM product WHERE product_name LIKE ?";

        try {

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, "%" + keyword + "%");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Product p = new Product();

                p.setProductId(rs.getInt("product_id"));
                p.setCategoryId(rs.getInt("category_id"));
                p.setProductName(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getDouble("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setManufactureDate(rs.getString("manufacture_date"));
                p.setExpiryDate(rs.getString("expiry_date"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}