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
                    <a class="nav-link" href="StudentHome.jsp">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="ViewSchedule.jsp">View Schedule</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="ViewHolidays.jsp">View Holidays</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ViewEvent.jsp">View Events</a>
                </li>               
                <li class="nav-item">
                    <a class="nav-link" href="StudentLogin.jsp">Logout</a>
                </li>             
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">View Holidays</h3><br />
                  <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/crs","root","");
           
             st = c1.createStatement();
             q="select hid,reason,date from holi";
             rs1=st.executeQuery(q);
               
             out.println("<table class=table-striped>");
             out.println("<tr align=center><th>  Id  </th><th> Reason </th><th> Date </th></tr>");
             while(rs1.next())
             {
                 int id=rs1.getInt("hid");
                 String reason=rs1.getString("reason");
                 String date=rs1.getString("date");                                  
                 out.println("<tr><td align=center>"+ id +"</td><td align=center>"+ reason +"</td><td align=center>"+ date +"</td></tr>");
                 out.println("</div>");
             }   
              }
             catch(Exception e)
             {
                   out.print(e);
             }
            
   %>
           </div>
           </div>        
    </div>
    </body>
</html>
