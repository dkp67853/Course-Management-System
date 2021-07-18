package project;
import java.sql.*;
public class ConnectionProvider {
	private static Connection con;
	public static Connection getCon() {
		try {
			if(con==null) {
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crs","root","");
				
			}
		}
		catch(Exception e) {
			System.out.print(e);
			return null;
		}
		return con;
	}
}
