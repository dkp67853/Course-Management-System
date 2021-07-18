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
                    <a class="nav-link " href="AdminHome.jsp">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link active" href="AddLecture.jsp">Add Lectures</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddEvent.jsp">Add Events</a>
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
                  <h3 class="text-primary">Add Lecture Details</h3><br />
                <form>
                    <div class="form-group">
                        <label for="lecture">Lecture</label>
                        <input class="form-control" type="text" name="lect" placeholder="Enter Lecture" />
                    </div>

                    <div class="form-group">
                        <label for="faculty">Faculty Name</label>
                        <input class="form-control" type="text" name="f_name" placeholder="Enter Faculty Name" />
                    </div>                    

                    <div class="form-group">
                        <label for="date">Date</label>
                        <input class="form-control" type="text" name="date" placeholder="Enter Date" />
                    </div>  
                    
                    <div class="form-group">
                        <label for="s_time">Start Time</label>
                        <input class="form-control" type="text" name="s_time" placeholder="Enter Start Time" />
                    </div>  
                    
                    <div class="form-group">
                        <label for="e_time">End Time</label>
                        <input class="form-control" type="text" name="e_time" placeholder="Enter End Time" />
                    </div>  
                    <button type="submit" class="btn btn-primary">Add</button>
                    <br>
                   
                </form> 
                   <%
                         
        
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String lect=request.getParameter("lect");
             String fname=request.getParameter("f_name");
             String dt=request.getParameter("date");
             String stm=request.getParameter("s_time");
             String et=request.getParameter("e_time");
             
              Class.forName("com.mysql.jdbc.Driver");
             Connection c1=ConnectionProvider.getCon();
             
             st = c1.createStatement();
             q="insert into lecture(lecture,f_name,date,s_time,e_time) values('"+ lect +"','"+ fname +"','"+ dt +"','"+ stm +"','"+ et +"')";
             
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
