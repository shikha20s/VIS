package connection;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public final class ConnectionProvider {
	
	private ConnectionProvider()
	{}
	
	static Connection con=null;
	
	
	 public static synchronized Connection getConnection()
	 {
		 if(con==null)
		 {
			 try
			 {
			Class.forName("com.mysql.jdbc.Driver");
		
			con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","root");
			return con;
			 
			 }
			 catch (Exception e) {
			  e.printStackTrace();
			}
		 
		 }
		 else
		 {
			 return con;
			 
		 }
		 
		return con;
		 
		 
	 }
	


}
