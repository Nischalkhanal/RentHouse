package com.acem.rent.DB.DAO.impl;

import com.acem.rents.Sell;
import com.acem.rent.DB.dbutil.DbConnection;
import com.acem.rent.dao.SellDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SellDAOImpl implements SellDAO {

    private final DbConnection db = new DbConnection();

    @Override
    public List<Sell> getAll() throws ClassNotFoundException, SQLException {
        List<Sell> SellList = new ArrayList<>();
        String sql = "SELECT * FROM tbl_sell";
        db.open();
        db.initStatement(sql);
        ResultSet rs = db.executeQuery();
        while (rs.next()) {
            Sell ownrm = new Sell();
            //ownrm.setId(rs.getInt("id"));
            ownrm.setFirstName(rs.getString("firstname"));
            ownrm.setLastName(rs.getString("lastname"));
            ownrm.setContact(rs.getString("contact"));
            ownrm.setAddress(rs.getString("address"));
            ownrm.setSpecs(rs.getString("specs"));
            ownrm.setPrice(rs.getString("price"));
            ownrm.isStatus();
            SellList.add(ownrm);
        }
        db.close();
        return SellList;
    }

    @Override
    public int insert(Sell ownrm) throws ClassNotFoundException, SQLException {
        String sql = "INSERT into tbl_sell(firstname,lastname,contact,address,specs,price,status) VALUES(?,?,?,?,?,?,?)";

        db.open();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, ownrm.getFirstName());
        stmt.setString(2, ownrm.getLastName());
        stmt.setString(3, ownrm.getContact());
        stmt.setString(4, ownrm.getAddress());
        stmt.setString(5, ownrm.getSpecs());
        stmt.setString(6, ownrm.getPrice());
        stmt.setBoolean(7, ownrm.isStatus());
        int result = db.executeUpdate();
        db.close();
        return result;
    }

   

    @Override
    public Sell getByID(int id) throws ClassNotFoundException, SQLException {
        db.open();
        Sell ownrm = null;
        String sql = "SELECT * from tbl_sell where id=?";
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            ownrm = new Sell();
            ownrm.setFirstName(rs.getString("firstname"));
            ownrm.setLastName(rs.getString("lastname"));
            ownrm.setContact(rs.getString("contact"));
            ownrm.setAddress(rs.getString("address"));
            ownrm.setSpecs(rs.getString("specs"));
            ownrm.setPrice(rs.getString("price"));
            ownrm.isStatus();
        }
        db.close();
        return ownrm;
    }

}
