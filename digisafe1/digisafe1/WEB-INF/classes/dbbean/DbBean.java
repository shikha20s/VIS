package dbbean;
import java.sql.*;
public class DbBean 
{
Connection con=null;

public Connection getConnect()
{
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","digisafe","digisafe");
return con;
}
catch(Exception e)
{
System.out.println(e); 
return con;
}
}
}