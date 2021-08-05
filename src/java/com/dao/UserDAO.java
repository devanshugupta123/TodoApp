package com.dao;

import com.connection.JDBCUtils;
import com.model.UserBean;
import java.io.PrintStream;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserDAO {
   public int registerUser(UserBean user,HttpServletRequest request,HttpServletResponse reponse){
       String sql="insert into users values (?,?,?,?)";
       int result=0;
       try{
       Connection con=JDBCUtils.getConnection();
       PreparedStatement ps=con.prepareStatement(sql);
       ps.setString(1,user.getFirstname());
       ps.setString(2,user.getLastname());
       ps.setString(3,user.getUsername());
       ps.setString(4,user.getPassword());
        result=ps.executeUpdate();
        con.close();  
       }
       catch(Exception e){
         try{ 
             reponse.sendRedirect("Register.jsp");
           }
         catch(Exception e1){
             
         }
       }
       return result;
   }
    
}
