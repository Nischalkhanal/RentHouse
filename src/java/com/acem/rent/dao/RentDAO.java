/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acem.rent.dao;

import com.acem.rents.Rent;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nick
 */
public interface RentDAO {
        ArrayList<Rent> getAll() throws ClassNotFoundException,SQLException;
        

        Rent rent(String firstname,String lastname,String contact,String address,String specs,String price,boolean status) throws ClassNotFoundException, SQLException;

    
}
