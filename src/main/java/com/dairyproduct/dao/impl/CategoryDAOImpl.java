package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dairyproduct.dao.CategoryDAO;
import com.dairyproduct.dto.Category;
import com.dairyproduct.utility.Connector;

public class CategoryDAOImpl implements CategoryDAO {

    private Connection con;

    public CategoryDAOImpl() {
        con = Connector.requestConnection();
    }



    // Add Category
    @Override
    public boolean addCategory(Category category) {


        String sql = "INSERT INTO category(category_name, description) VALUES(?,?)";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setString(1, category.getCategoryName());

            ps.setString(2, category.getDescription());


            return ps.executeUpdate() > 0;


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return false;

    }





    // Update Category
    @Override
    public boolean updateCategory(Category category) {


        String sql = "UPDATE category SET category_name=?, description=? WHERE category_id=?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setString(1, category.getCategoryName());

            ps.setString(2, category.getDescription());

            ps.setInt(3, category.getCategoryId());


            return ps.executeUpdate() > 0;


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return false;

    }





    // Delete Category
    @Override
    public boolean deleteCategory(int categoryId) {


        String sql = "DELETE FROM category WHERE category_id=?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setInt(1, categoryId);


            return ps.executeUpdate() > 0;


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return false;

    }





    // Get Category By Id
    @Override
    public Category getCategoryById(int categoryId) {


        String sql = "SELECT * FROM category WHERE category_id=?";


        try(PreparedStatement ps = con.prepareStatement(sql)) {


            ps.setInt(1, categoryId);


            try(ResultSet rs = ps.executeQuery()) {


                if(rs.next()) {


                    return mapResultSetToCategory(rs);

                }

            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return null;

    }





    // Get All Categories
    @Override
    public List<Category> getAllCategories() {


        List<Category> list = new ArrayList<>();


        String sql = "SELECT * FROM category ORDER BY category_id DESC";


        try(PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()) {


            while(rs.next()) {


                list.add(mapResultSetToCategory(rs));


            }


        } catch(SQLException e) {

            e.printStackTrace();

        }


        return list;

    }





    // ResultSet to Category Object
    private Category mapResultSetToCategory(ResultSet rs) throws SQLException {


        Category category = new Category();


        category.setCategoryId(
            rs.getInt("category_id")
        );


        category.setCategoryName(
            rs.getString("category_name")
        );


        category.setDescription(
            rs.getString("description")
        );


        return category;

    }

}