/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acem.rent.DB.DAO.impl;

import com.acem.rent.DB.dbutil.DbConnection;
import com.acem.rent.dao.RentDAO;
import com.acem.rents.Rent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nick
 */
public class RentDAOImpl implements RentDAO {
        private final DbConnection db = new DbConnection();


    @Override
    public ArrayList<Rent> getAll() throws ClassNotFoundException, SQLException {
        ArrayList<Rent> RentList = new ArrayList<>();
        String sql = "SELECT * FROM tbl_sell";
        db.open();
        db.initStatement(sql);
        ResultSet rs = db.executeQuery();
        while (rs.next()) {
            Rent ownrm = new Rent();
            //ownrm.setId(rs.getInt("id"));
            ownrm.setFirstName(rs.getString("firstname"));
            ownrm.setLastName(rs.getString("lastname"));
            ownrm.setContact(rs.getString("contact"));
            ownrm.setAddress(rs.getString("address"));
            ownrm.setSpecs(rs.getString("specs"));
            ownrm.setPrice(rs.getString("price"));
            ownrm.isStatus();
            RentList.add(ownrm);
        }
        db.close();
        return RentList;
    }

   

    

    

    @Override
    public Rent rent(String firstname, String lastname, String contact, String address, String specs, String price, boolean status) throws ClassNotFoundException, SQLException {
db.open();
        Rent r = null;
        String sql = "SELECT * from tbl_users where firstname = ? and lastname=? and contact=? and address=? and specs=? and price=? and status=?";
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, firstname);
        stmt.setString(2, lastname);
        stmt.setString(3, contact);
        stmt.setString(4, address);
        stmt.setString(5, specs);
        stmt.setString(6, price);
        stmt.setBoolean(7,status );
        
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            r = new Rent();
            r.setFirstName(rs.getString("firstname"));
            r.setLastName(rs.getString("lastname"));
            r.setContact(rs.getString("contact"));
            r.setAddress(rs.getString("address"));
            r.setSpecs(rs.getString("specs"));
            r.setPrice(rs.getString("price"));
            r.isStatus();

        db.close();
        return r;
    }
        return null;
        
}}
