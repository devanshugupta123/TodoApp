  <%@page import="com.model.ToDoBean"%>
<%@page import="com.dao.ToDoDAO"%>
<!DOCTYPE html>
<html>
<style>
    label{
        padding:10px;
        font-size:16px;
    }
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 13px 6px;
  border: none;
  border-radius: 4px;
  cursor: pointer;

}
input[type=submit]:hover{
    color:green;
} 
div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:25%;
  margin-right:25%;
}
h1{
    text-align:center;
    color:rgb(71, 187, 255);
}
</style>
<body>
      <%@include file="Header.jsp"%>
<h1> Edit Todo</h1>
<div>
    <%
        int id=Integer.parseInt(request.getParameter("id"));
        ToDoDAO dao=new ToDoDAO();
        ToDoBean todo=dao.readToDoById(id);
        %>
  <form action="Update" method="post">
      <input type="hidden" name="id" value="<%=todo.getId()%>">
    <label for="fname">Title</label>
    <input type="text" id="fname" name="title" placeholder="Title" value="<%=todo.getTitle()%>">

    <label for="lname">Description</label>
    <input type="text" id="lname" name="description" placeholder="Description" value="<%=todo.getDescription()%>">

    <label for="country">Status</label>
    <select id="country" name="status">
      <option value="In Progress">In Progress</option>
      <option value="Complete">Complete</option>
    </select>
    <input type="submit" value="Edit">
  </form>
</div>

</body>
</html>