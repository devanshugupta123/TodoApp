       
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>To App</title>
        <style>
            body{
                margin-top: 8%;
                background-color: rgb(217, 245, 242);
            }
            .btn{
                width:20%;
                font-size:92%;;
                padding:6px 6px;
                background-color: rgb(19, 18, 8);
                color:white;
                position:absolute;
                left:50%;

            }
            .btn:hover{
                color:rgb(156, 140, 140);
            }
            .demo{
                padding :10px 10px;
            }
             
             .frm{
                 position:absolute;
                 top:30%;
                 left:32%;
             
             }
             h1{
                 color:brown;
                 text-align: center;
                  
     
             }
             .box td{
                 padding: 5px 5px; 
             }
        </style>
    </head>
     
    
    <body >
          <%@include file="Header.jsp"%>
        <h1><u>User Registration Form</u></h1><br>
        <div  >
             
        <form   action="UserController" class="frm" method="get">
             
            <table>
                <tr class ="box">
                    <td> <label>First Name :</label><br></td>
                    <td>  <input type="text"  style="padding: 2px 2px;height:25px;" size="42" placeholder="First Name" name="firstname" required><br></td>
                </tr>
                <tr class ="box"> 
                 <td><label>  Last Name :</label><br> </td>
               <td>  <input type="text" style="height:25px;padding: 2px 2px" size="42" placeholder="Last Name" name="lastname" required><br> </td>
                </tr>
                <tr class ="box">
                    <td> <label> User Name :</label><br> </td>
                 <td><Input type="text"   placeholder="Username" style="height:25px;padding: 2px 2px" size="42"  name="username" required><br> </td>
                </tr>
                <tr class ="box">
                <td>  <label> Password :</label><br> </td> 
                <td>  <input type="password"   placeholder="Password" style="height:25px;padding: 2px 2px" size="42" name="password" required><br> </td> 
                </tr>
            </table>
                <div class="demo" > 
                  <input  class="btn" type="submit" value="Register">
                </div>
            
               
        </form>
        </div>
        
    </body>
</html>
