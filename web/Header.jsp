 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
       body{
           margin:0;
           padding:0;
           background-color:  rgb(236, 235, 222);
       }   
       header{
           border-radius: 3%;
           width:100%;
           height:77px;
           background-color: #110000c5;
       }
       ul{
           float:right;   
           
       }
       li{
           display:inline-block;
           padding:10px 20px; margin-right:100px;
           
       }
       a{
           color:white;
           text-decoration: none;
           font-size:medium;
           font-family:'Open Sans';
           
       }
       a:hover{
           color:#bbaeae;
           transition:0.5s;
       }
       .todo{
           color:white;
       }
       h3{
           position:absolute;
          margin-left:3%;
          margin-top:25px;
           color:white;
       }
       h3:hover{
           color:rgb(224, 222, 205);
       }
       .navbar{
           margin-right :60px;
       }
    </style>
       
</head>
   
<body>
     
    <a href="#"> <h3 class="todo">TodoApp</h3></a>
    <header>
        
            <nav class="navbar">
                 
                 <ul>
                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="Register.jsp">Sign up</a></li>
                    
                    
                </ul>
            </nav>
 </header>
</body>
</html>