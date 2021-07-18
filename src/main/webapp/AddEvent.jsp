<%@page import="java.sql.*" %>
<%@page import="project.ConnectionProvider" %>
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
                    <a class="nav-link" href="AdminHome.jsp">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="AddLecture.jsp">Add Lectures</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="AddEvent.jsp">Add Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddHoliday.jsp">Add Holidays</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddFaculty.jsp">Add Faculty</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Logout</a>
                </li>              
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">Add Events</h3><br />
                <form >
                    <div class="form-group">
                        <label for="event">Event Name</label>
                        <input class="form-control" type="text" name="ename" placeholder="Enter Username" />
                    </div>

                    <div class="form-group">
                        <label for="descr">Description</label>
                        <input class="form-control" type="text" name="descr" placeholder="Enter Description" />
                    </div>  
                    
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input class="form-control" type="text" name="date" placeholder="Enter Date" />
                    </div>  

                    <button type="submit" class="btn btn-primary">Add</button>
                    <br>
                    
                </form> 
                   <%
                         
        
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String ename=request.getParameter("ename");
             String descr=request.getParameter("descr");
             String dt=request.getParameter("date");             
             
              Class.forName("com.mysql.jdbc.Driver");
             Connection c1=ConnectionProvider.getCon();
             
             st = c1.createStatement();
             q="insert into event(e_name,descr,date) values('"+ ename +"','"+ descr +"','"+ dt +"')";
             
            st.executeUpdate(q);
             
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("Try Again");
    }        
            
   %>
           </div>
           </div>        
    </div>
    </body>
</html>