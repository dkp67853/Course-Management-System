<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Course Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron ">
               <h1 class="text-primary align-content-center">Course Management System</h1>
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
               <li class="nav-item">
                    <a class="nav-link active" href="index.html">Admin Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="StudentLogin.jsp">Student Login</a>
                </li>                
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">                   
                   <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String name=request.getParameter("name");
             String pass=request.getParameter("pass");
             
              if(name.equals("admin") && pass.equals("admin"))
              {
                  out.println("Admin Login Successfully...");
                   out.println("<a href='AdminHome.jsp'>Click Here To Continue</a>");
              }
              else
              {
                  out.println("<a href='index.jsp'>Try Again</a>");
              }
                      
             
             
             
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='CompanyRegister.jsp'>Try Again</a>");
    }        
            
   %>
           </div>
           </div>        
    </div>
    </body>
</html>