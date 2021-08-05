 <%@page import="java.util.ArrayList"%>
<%@page import="com.model.ToDoBean"%>
<%@page import="com.dao.ToDoDAO"%>
<!DOCTYPE html>
<html lang="en">   
    <link rel="stylesheet" href="Dev.css">
    <head>
          <meta http-equiv="refresh" content="5">
    </head>
    <style>
        .content-table{
            border-collapse:collapse;
            margin-left:auto;
            margin-right:auto;   
            width:70%;
            border-radius:5px;
            overflow:hidden;
        }
        .content-table thead tr{
            background-color:green;
            color:white;
            text-align:left;
            font-size:20px
       }
        .content-table th,.content-table td{
            padding:10px 10px;
        }
        .content-table tbody td{
              font-size:18px;
        }
        .content-table tbody tr{
          border-bottom:1px solid green;
        }
        .content-table tbody tr:last-of-type{
            border-bottom:2px solid green;
        }
        .content-table  td input{
            background-color: tan;
            padding:5px;
             
        }
        .center{
            text-align:center;
        }
        .add-todo{
            background-color: rgba(56, 52, 52, 0.507);
            margin:20px;
            margin-left:15%;
            padding:7px;
            color:white;
            font-size:15px;
        }
        input:hover{
            color:rgb(110, 107, 126);
        }
        .message{
            color:black;
            font-size:19px;
            margin-left:200px;
            background:white;
            width:16%;
        }
    </style>

<body>
    <%@include file="Header.jsp"%>
     <h1 class="center">List of Todos</h1>
     <%
         String msg=(String)session.getAttribute("success");
         if(msg!=null){
      %>
       <div class="message"><%=msg%></div>
       <%
           session.removeAttribute("success");
         }
      %>
       <%
         String failed=(String)session.getAttribute("fail");
         if(failed!=null){
      %>
       <div class="alert alert-danger" role="alert"><%=failed%></div>
       <%
           session.removeAttribute("failed");
         }
      %>
     <a href="AddTodo.jsp"> <input class="add-todo" type="button" value="Add Todo"></a>
     <div>
         <table class ="content-table">
           <thead>
            <tr>
                <th>Title</th>
                <th>Target Date</th>
                <th>Todo Status</th>
                <th>Actions</th>
               </tr>
           </thead>
           <tbody>
               <%
                   ToDoDAO dao=new ToDoDAO();
                   ArrayList<ToDoBean>list=dao.readToDo();
                   for(ToDoBean todo:list){
                %>
                 <tr>
                    <td><%=todo.getTitle()%></td>
                    <td><%=todo.getDescription()%></td>
                    <td><%=todo.getStatus()%></td>
            <td> <a href="Edit.jsp?id=<%=todo.getId()%>"><input type="button" value="Edit"></a>&nbsp;&nbsp;<a href="Delete?id=<%=todo.getId()%>"><input type="button"value="Delete"></td></a>
                </tr>
                <%
                   }
                
               %>
           </tbody>
         </table>
     </div>
</body>
</html>