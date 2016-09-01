/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acem.rent.dao;

import com.acem.rents.User;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Karan
 */
public interface UserDAO {

    List<User> getAll() throws ClassNotFoundException, SQLException;

    int insert(User u) throws ClassNotFoundException, SQLException;

    int delete(int id) throws ClassNotFoundException, SQLException;

    int update(User u) throws ClassNotFoundException, SQLException;

    User login(String username,String password) throws ClassNotFoundException, SQLException;
    
    User getByID(int id) throws ClassNotFoundException, SQLException;
}
