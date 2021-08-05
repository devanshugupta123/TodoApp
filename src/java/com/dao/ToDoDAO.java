
package com.dao;
import com.model.*;
import com.connection.JDBCUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.ArrayList;
public class ToDoDAO {
    private Connection con;
   public boolean insertToDo(ToDoBean todo){
      String sql="insert into todo(title,description,status) values(?,?,?);";
      try{
        con= JDBCUtils.getConnection();
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,todo.getTitle());
      ps.setString(2,todo.getDescription());
      ps.setString(3,todo.getStatus());
     int result= ps.executeUpdate();
     if(result==1)return true;
      }
      catch(Exception e){
          e.printStackTrace();
      }
      return false;
   } 
   public ArrayList<ToDoBean> readToDo(){
       String sql="select * from todo;";
       con= JDBCUtils.getConnection();
       ArrayList<ToDoBean>list=new ArrayList();
       try{   
       PreparedStatement ps=con.prepareStatement(sql);
       ResultSet rs=ps.executeQuery();
       while(rs.next()){
           int id=rs.getInt("id");
           String title=rs.getString("title");
           String description=rs.getString("description");
           String status =rs.getString("status");
           ToDoBean todo=new ToDoBean();  
           todo.setId(id); 
           todo.setTitle(title);
           todo.setDescription(description);
           todo.setStatus(status);
           list.add(todo);
            // i mistakenly add void in constructor so erro was contructor todobean is not applied to given types
        }
       }
       catch(Exception e){
           e.printStackTrace();
       }
        return list;
   }
   public ToDoBean readToDoById(int id){
       String sql="select * from todo where id=?";
       ToDoBean todo=null;
       try{   
       con= JDBCUtils.getConnection();
       PreparedStatement ps=con.prepareStatement(sql);
       ps.setInt(1, id);
       ResultSet rs= ps.executeQuery();
        while(rs.next()){
           String title=rs.getString("title");
           String description=rs.getString("description");
           String status =rs.getString("status");
            todo=new ToDoBean();  
           todo.setId(id); 
           todo.setTitle(title);
           todo.setDescription(description);
           todo.setStatus(status);
        }
       }
       catch(Exception e){
           e.printStackTrace();
       }
       return todo;
   }
   
   public boolean updateToDo(ToDoBean todo){
       boolean f=false;
       try{
           String sql="update todo set title=?,description=?,status=? where id=?";
           con=JDBCUtils.getConnection();
           PreparedStatement ps=con.prepareStatement(sql);
           ps.setString(1,todo.getTitle());
           ps.setString(2,todo.getDescription());
           ps.setString(3,todo.getStatus());
           ps.setInt(4,todo.getId());
          int result= ps.executeUpdate();
          if(result==1)f=true;
       }
       catch(Exception e){
           e.printStackTrace();
       }
       return f;
   }
   
   public boolean deleteToDo(int id){
       boolean f=false;
       try{
          String sql="delete from todo where id=?";
          con=JDBCUtils.getConnection();
          PreparedStatement ps=con.prepareStatement(sql);
          ps.setInt(1,id);
         int result= ps.executeUpdate();
         if(result==1)f=true;
       }
       catch(Exception e){
           e.printStackTrace();
       }
       return f;
   }
    
}
