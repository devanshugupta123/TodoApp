 
package com.model;

import java.sql.Date;
import java.time.LocalDate;
public class ToDoBean {
   private int id;
   private String title;
   private String description;
   private String status;
   public void setId(int id){
       this.id=id;
   }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getStatus() {
        return status;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setStatus(String status) {
        this.status = status;
    }
   
   
   
}
