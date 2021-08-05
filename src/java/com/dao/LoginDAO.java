 
package com.dao;

import com.connection.JDBCUtils;
import com.model.UserLoginBean;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
    public boolean validate(UserLoginBean user){
        boolean status=false;
        try{
            Connection con=JDBCUtils.getConnection();
            String sql="select * from users where username=? and password=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPassword());
            ResultSet rs=ps.executeQuery();
            status =rs.next();
            while(rs.next()){
                System.out.println(rs.getString("firstname"));
            }
        }
        catch(Exception e){     
          System.out.println(e);  
        }
       return status;
    }
}
