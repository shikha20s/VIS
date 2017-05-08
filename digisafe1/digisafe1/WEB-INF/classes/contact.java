/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DJ
 */
public class contact extends HttpServlet {

    
   

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
            res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
                String message=req.getParameter("message");
                
                try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","secret");
                       
			PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?,?)");

			ps.setString(1,name);
			ps.setString(2,email );
			ps.setString(3,phone);
                        ps.setString(4,message);
			int i=ps.executeUpdate();
                        if(i!=0){
                                    out.println("<script type=\"text/JavaScript\">");
                                    out.println("alert(\"Your Query Sent Successfully\")");
                                    out.println("location='contact.html';");
                                    out.println("</script>");
                
                                    }
                        else
					out.println("<script type=\"text/JavaScript\">");
                                    out.println("alert(\"Invalid Entry\")");
                                    out.println("</script>");
                                    RequestDispatcher rd=req.getRequestDispatcher("contact.html");
                                           rd.include(req,res);
                }
                catch (Exception e){
					
				}
    }

    
}
