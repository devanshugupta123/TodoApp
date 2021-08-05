 
package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtils {
     private static String  jdbcURL="jdbc:mysql://localhost:3306/demo";
    private static  String  username = "root";
    private static String  password = "root";
    static Connection con=null;
   public static Connection getConnection(){
    try{
    Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection(jdbcURL,username,password);
    } 
    catch(Exception e){
        e.printStackTrace();
    }
     return con;
}
}
