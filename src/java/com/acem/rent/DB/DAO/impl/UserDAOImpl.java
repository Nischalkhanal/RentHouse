/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acem.rent.DB.DAO.impl;

import com.acem.rent.DB.dbutil.DbConnection;
import com.acem.rents.User;
import com.acem.rent.dao.UserDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Karan
 */
public class UserDAOImpl implements UserDAO {

    private final DbConnection db = new DbConnection();

    @Override
    public List<User> getAll() throws ClassNotFoundException, SQLException {
        List<User> userList = new ArrayList<>();
        String sql = "SELECT * FROM tbl_users";
        db.open();
        db.initStatement(sql);
        ResultSet rs = db.executeQuery();
        while (rs.next()) {
            User u = new User();
            u.setU_id(rs.getInt("u_id"));
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
            u.setEmail(rs.getString("email"));
            userList.add(u);
        }
        return userList;
    }

    @Override
    public int insert(User u) throws ClassNotFoundException, SQLException {
        db.open();
        String sql = "INSERT INTO tbl_users(username,password,email)VALUES(?,?,?)";
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, u.getUsername());
        stmt.setString(2, u.getPassword());
        stmt.setString(3, u.getEmail());
        int result = db.executeUpdate();
        db.close();
        return result;
    }

    @Override
    public int delete(int u_id) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(User user) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User login(String username, String password) throws ClassNotFoundException, SQLException {
        db.open();
        User u = null;
        String sql = "SELECT * from tbl_users where username = ? and password=?";
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, password);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            u = new User();
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
            u.setEmail(rs.getString("email"));
        }

        db.close();
        return u;
    }

    @Override
    public User getByID(int id) throws ClassNotFoundException, SQLException {
        db.open();
        User u = null;
        String sql = "SELECT * from tbl_users where u_id = ?";
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            u = new User();
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
            u.setEmail(rs.getString("email"));
        }

        db.close();
        return u;
    }

}
