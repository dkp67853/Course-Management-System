package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.ConnectionProvider;

public class AddHolidayServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
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
            RequestDispatcher rd = request.getRequestDispatcher("AddHoliday.jsp");
			rd.include(request, response);
             
    }
    catch(Exception e)
    {
    	PrintWriter out = response.getWriter();
                    out.println(e);
                     out.println("Try Again");
    }        
	}
}
