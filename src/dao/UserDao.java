package dao;

import java.sql.SQLException;
import bean.User;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import connection.ConnectionProvider;

public class UserDao {
	public User getU() {
		return u;
	}


	public void setU(User u) {
		this.u = u;
		//this.register();
	}


	private User u;
       
	
	public int register()
	{
		int i=0;
		Connection c=ConnectionProvider.getConnection();
		try {
			PreparedStatement ps=(PreparedStatement) c.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,u.getName());
			ps.setInt(2,u.getAge());
			ps.setInt(3,u.getDob());
			ps.setString(4,u.getAdd());
			ps.setString(5,u.getEmail());
			ps.setInt(6,u.getConnumber());
			ps.setString(7,u.getCname());
			ps.setString(8,u.getModalno());
			ps.setString(9,u.getChasisno());
			ps.setString(10,u.getEngineno());
			ps.setString(11,u.getEnginecap());
			ps.setString(12,u.getColor());
			i=ps.executeUpdate();
			if(i>0)
				System.out.println("success");
			return i;
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println(c);
		return i;
		
		
	}
}
