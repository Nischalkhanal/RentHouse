
package com.acem.rent.dao;

import com.acem.rents.Sell;
import java.sql.SQLException;
import java.util.List;

public interface SellDAO {
    List<Sell> getAll() throws ClassNotFoundException,SQLException;
    
    int insert(Sell ownrm) throws ClassNotFoundException,SQLException;
    

    Sell getByID(int id) throws ClassNotFoundException,SQLException;
    
   
}
