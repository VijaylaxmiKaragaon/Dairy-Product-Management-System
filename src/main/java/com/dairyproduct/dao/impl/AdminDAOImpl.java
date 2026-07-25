package com.dairyproduct.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dairyproduct.dao.AdminDAO;
import com.dairyproduct.dto.Admin;
import com.dairyproduct.utility.Connector;

public class AdminDAOImpl implements AdminDAO {

    @Override
    public boolean addAdmin(Admin admin) {

        String sql = "INSERT INTO Admin(name,email,phone,password_hash,role) VALUES(?,?,?,?,?)";

        try (Connection con = Connector.requestConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, admin.getName());
            ps.setString(2, admin.getEmail());
            ps.setString(3, admin.getPhone());
            ps.setString(4, admin.getPasswordHash());
            ps.setString(5, admin.getRole());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            System.out.println("Error while adding Admin");
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Admin login(String email, String password) {

        String sql = "SELECT * FROM Admin WHERE email=? AND password_hash=?";

        try (Connection con = Connector.requestConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Admin admin = new Admin();

                admin.setAdminId(rs.getInt("admin_id"));
                admin.setName(rs.getString("name"));
                admin.setEmail(rs.getString("email"));
                admin.setPhone(rs.getString("phone"));
                admin.setPasswordHash(rs.getString("password_hash"));
                admin.setRole(rs.getString("role"));

                return admin;
            }

        } catch (SQLException e) {
            System.out.println("Login Failed");
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public Admin getAdminById(int id) {

        String sql = "SELECT * FROM Admin WHERE admin_id=?";

        try (Connection con = Connector.requestConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Admin admin = new Admin();

                admin.setAdminId(rs.getInt("admin_id"));
                admin.setName(rs.getString("name"));
                admin.setEmail(rs.getString("email"));
                admin.setPhone(rs.getString("phone"));
                admin.setPasswordHash(rs.getString("password_hash"));
                admin.setRole(rs.getString("role"));

                return admin;
            }

        } catch (SQLException e) {
            System.out.println("Unable to Fetch Admin");
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public boolean updateAdmin(Admin admin) {

        String sql = "UPDATE Admin SET name=?,email=?,phone=?,password_hash=?,role=? WHERE admin_id=?";

        try (Connection con = Connector.requestConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, admin.getName());
            ps.setString(2, admin.getEmail());
            ps.setString(3, admin.getPhone());
            ps.setString(4, admin.getPasswordHash());
            ps.setString(5, admin.getRole());
            ps.setInt(6, admin.getAdminId());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            System.out.println("Unable to Update Admin");
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean deleteAdmin(int id) {

        String sql = "DELETE FROM Admin WHERE admin_id=?";

        try (Connection con = Connector.requestConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            System.out.println("Unable to Delete Admin");
            e.printStackTrace();
        }

        return false;
    }
}