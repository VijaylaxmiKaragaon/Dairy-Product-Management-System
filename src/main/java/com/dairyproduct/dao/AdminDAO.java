package com.dairyproduct.dao;

import com.dairyproduct.dto.Admin;

public interface AdminDAO {

    boolean addAdmin(Admin admin);

    Admin login(String email, String password);

    Admin getAdminById(int id);

    boolean updateAdmin(Admin admin);

    boolean deleteAdmin(int id);

}