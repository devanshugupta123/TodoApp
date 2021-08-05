         
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>To App</title>
        <style>
            body{
                margin-top: 9%;
                background-color: rgb(217, 245, 242);
            }
            .btn{
                width:20%;
                font-size:93%;;
                padding:6px 10px;
                background-color: rgb(13, 110, 21);
                color:rgb(240, 223, 223);
                position:absolute;
                left:50%;

            }
            .btn:hover{
                color:rgb(26, 10, 10);
            }
            .demo{
                padding : 15px 15px;
            }
             .frm{
                 position:absolute;
                 top:30%;
                 left:32%;
             
             }
             h1{
                 color:brown;
                 text-align: center;
                 font-size:40px;
                  
     
             }
             .box td{
                 padding: 5px 5px; 
             }
             .btn1{
                width:10%;
                font-size:92%;;
                padding:6px 10px;
                background-color: rgb(104, 124, 104);
                color:rgb(240, 223, 223);
                position:absolute;
                top:65%;
                left:47%;
                text-decoration:none;
             }
             .btn1:hover{
                 color:rgb(206, 164, 164);
             }
             span{
                 background-color: rgb(229, 229, 238);
             }
             .user{
                background-color:rgb(235, 156, 156);
                 position: absolute;
                 top: 60%;
                 left:49%;
             }
        </style>
    </head>
     
    <body >
        <%@include file="Header.jsp"%>
        <h1>Login</h1><br>           
        <form class="frm" action="LoginController" method="post">
             
            <table>    
                <tr class ="box">
                    <td> <label> User Name :</label><br> </td>
                 <td><Input type="text"   placeholder="Username" style="height:25px;padding: 2px 2px" size="42"  name="username" required><br> </td>
                </tr>
                <tr class ="box">
                <td>  <label> Password :</label><br> </td> 
                <td>  <input type="password"   placeholder="Password" style="height:25px;padding: 2px 2px" size="42" name="password" required><br> </td> 
                </tr>
            </table> 
            <div class="demo">
            <input  class="btn" type="submit" value="Login">  
           </div>
        </form>
           
      <div class="user">New User ?</div>
      <a  class="btn1" href="Register.jsp"> Create an account</a>
        
    </body>
</html>
