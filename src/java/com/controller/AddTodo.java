
package com.controller;

import com.dao.ToDoDAO;
import com.model.ToDoBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class AddTodo extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String title=request.getParameter("title");
        String description=request.getParameter("description");
        String status=request.getParameter("status");
        ToDoBean todo=new ToDoBean();
        todo.setTitle(title);
        todo.setDescription(description);
        todo.setStatus(status);
        ToDoDAO dao=new ToDoDAO();
       boolean result=dao.insertToDo(todo);
       HttpSession session=request.getSession();
         if(result){
             session.setAttribute("success","Todo Added Successfully");
             response.sendRedirect("index.jsp");
         }
          else {
             session.setAttribute("fail","Something Wrong");
             response.sendRedirect("AddTodo.jsp");
         }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
