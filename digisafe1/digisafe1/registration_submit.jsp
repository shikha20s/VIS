<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Language" content="en-us">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href=".\bootstrap\css\bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link href=".\css\footer-style.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src=".\bootstrap\js\bootstrap.min.js"></script>
<SCRIPT LANGUAGE="javascript">
function IsNumeric1(sText)
{

   var ValidChars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.@_,";
   var IsNumber=true;
   var Char;
   for (i = 0; i< sText.length && IsNumber==true; i++)  
      { 
      Char = sText.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
         {
           IsNumber = false;
         }
      }
   return IsNumber;
   
   }
 function check()
{ var a,b,c,d,flag=true;
  a =document.reg.T1.value
  b =document.reg.T2.value
  c =document.reg.T3.value
  d =document.reg.T4.value 
   var s1,s2,s3,s4
 s1=a.length
 s2=b.length
 s3=c.length
 s4=d.length

        
         if(IsNumeric1(a)){
         }
         else
         { flag=false
          alert("only numbers,alphabets . @ and _ are allowed as valid usernames")
         }
        if ((s1 == 0)||(s2 == 0)||(s3 == 0)||(s4 == 0))
        {  flag=false
           alert("All fields are mandatory")    
        } 
        if(s2<6)
        { flag=false
          alert("Password should be of minimum 6 characters")  
        }
       if(b!=c)
        { flag=false
          alert("Password and confirm password should be same")  
        }
       
        return flag
  }

  </script>
  <title>Registration</title>
</head>

<%@ page language="java" %> 
<%@ page import="java.io.*, java.sql.*" %>

<%@include file="connection.jsp"%>
<%   
Statement smt=null;
        String user="",pass="",nm="";
        int i=0;
        
        ResultSet rs=null;
        
try
{Object login_id=session.getAttribute("login_id");
        if( login_id == null)
         {
             response.sendRedirect("error.htm");
         }
      
           
        smt=con.createStatement();
        
        user=request.getParameter("T1");  
        pass=request.getParameter("T2"); 
        String email=request.getParameter("T4");       
     
       rs=smt.executeQuery("select * from  login_digisafe ");
       while(rs.next())
         {
           nm= rs.getString(1);
            if((nm.equals(user)))
              {  i=1;
              }
          } 
if(i==0)
{
PreparedStatement smt1=con.prepareStatement("insert into login_digisafe values(?,?,?,?,?)");
	
 smt1.setString(1,user); 
  smt1.setString(2,pass);
 smt1.setString(3,"");
 smt1.setString(4,"");
smt1.setInt(5,0);
 smt1.executeUpdate(); 
new File(application.getRealPath("")+"\\attachment\\"+user).mkdirs();
 response.sendRedirect("registration_admin_success.htm");
}else
 {pass="Username Already Available";%>

<div class="container-fluid bg-info">

<body bgcolor="#ECF5FF" topmargin="0"><FORM NAME="reg" onsubmit= "return check()" action= "registration_submit.jsp" method=post >

<div class="page-header bg-default">
<a target="_top" href="admin.htm" class="btn btn-link "><font color="#2D96FF"><font size="4">Home</a>
<a href="#" class="btn btn-link "></a>
<a target="_top" href="index.html" class="btn btn-link pull-right "><font color="#2D96FF"><font size="4">Sign out</font> </a>
</div>



	<tr>
		<td width="1002">
		<p><font size="4">&nbsp;</font></p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<P>&nbsp;</p>
        <font size="4" color="#FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<%= pass%></font></p>
	
	<!-- BOOTSTRAP FORM-->
	<div class="row">
<div class="col-lg-6 col-md-offset-3">
<div class="panel panel-default">
<div class="panel-heading ">
<div class="panel-title"><strong>User Registration</strong></div>
</div>
<div class="panel-body bg-default">
	<div class="form-group">	
<label>UserName</label>
<div class="input-group">
<input type="text" name="T1" value = "<%= user%>" maxlength="50" class="form-control"  placeholder="Enter your name" required/>
<span class="input-group-addon"><span class="glyphicon glyphicon-user text-primary "></span></span>
</div>

<div class="form-group">
		<label>Password</label>
		<div class="input-group">
		<input type="password" name="T2" class="form-control" placeholder="Enter your Password"  onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
  if(this.checkValidity()) form.T3.pattern = this.value;" required/>
		<span class="input-group-addon"><i class="fa fa-key "></i></span>
			</div>
		</div>  
		
		<div class="form-group">
		<label>Confirm Password</label>
		<div class="input-group">
		<input type="password" name="T3" class="form-control" placeholder="Renter your Password"  input title="Please enter the same Password as above"  onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');" required/>
		<span class="input-group-addon"><i class="fa fa-key "></i></span>
			</div>
		</div> 
		
		<div class="form-group">
		<label>E-mail Address</label>
		<div class="input-group">
		<input type="email" name="T4" class="form-control" placeholder="Enter your  E-mail" data-error="Bruh, that email address is invalid" required/>
		<span class="input-group-addon"><span class="glyphicon glyphicon-envelope text-primary"></span></span>
			</div>
		</div>
		</div>
		<input type="submit" class="btn btn-primary" value="SUBMIT" name="B1" />
		<input type="reset" class="btn btn-danger pull-right" value="RESET"/>
		</div>
		
		</div>
		

		</div>
</form>
	<!-- BOOTSTRAP FORM-->
	
	
</form>
                      
        <%
          }
        }catch(Exception e)
      {
       out.println(e);
      }              
      %>                             
 </body>
</html>