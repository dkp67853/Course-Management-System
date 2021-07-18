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
                    <a class="nav-link" href="AddEvent.jsp">Add Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="AddHoliday.jsp">Add Holidays</a>
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
                  <h3 class="text-primary">Add Holidays</h3><br />
                <form>
                    <div class="form-group">
                        <label for="reason">Reason</label>
                        <input class="form-control" type="text" name="reason" placeholder="Enter Username" />
                    </div>

                    <div class="form-group">
                        <label for="date">Date</label>
                        <input class="form-control" type="text" name="date" placeholder="Enter Username" />
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Add</button>
                    <br>
                    
                </form> 
                   <%
                         
        
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String res=request.getParameter("reason");
             String dt=request.getParameter("date");
             
              Class.forName("com.mysql.jdbc.Driver");
             Connection c1=ConnectionProvider.getCon();
             
             st = c1.createStatement();
             q="insert into holi(reason,date) values('"+ res +"','"+ dt +"')";
             
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
