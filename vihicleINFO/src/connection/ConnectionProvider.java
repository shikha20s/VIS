package connection;

import java.sql.DriverManager;
import java.sql.Connection;


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
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
			
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
