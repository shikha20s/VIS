
<html>
<head>
<script language=javascript>

checked=false;
function checkedAll (myform) {
	var aa= document.getElementById('myform');
	 if (checked == false)
          {
           checked = true
          }
        else
          {
          checked = false
          }
	for (var i =0; i < aa.elements.length; i++) 
	{
	 aa.elements[i].checked = checked;
	}
      }
</script>
</head>
<base target="_self">

<body bgcolor="#ECF5FF" style="color: #B9DCFF; border-left-style: solid; border-left-width: 3; border-right-style: solid; border-right-width: 3">

<FORM onSubmit="return true" METHOD="post" NAME="myform" ACTION="delete.jsp">

<input type="submit" value="Delete" name="d1" style="width: 74; height: 24">

<%@ page language="java" %> 
<%@ page import="java.io.*, java.sql.*" %>
<%@include file="connection.jsp"%>
<%   Statement smt=null;
        String sender="",subject="",date1="",rc="",date2="";

        int i=0,check,j=0;
        
        ResultSet rs=null;
        String receiver="";
        int skip=0;
        receiver=session.getAttribute("receiver").toString();
        session.setAttribute("goto1",String.valueOf(j));
           Object login_id=session.getAttribute("login_id");
        if(receiver ==null &&login_id == null)
         {
             response.sendRedirect("error.htm");
         } 
if(receiver!=null)
{
try
{
           smt=con.createStatement();
        rs=smt.executeQuery("select username_receiver,username_sender,subject,message,message_digest,message_key,TO_CHAR(message_date,'YYYY-MM-DD HH:MI:SS'),check1 from  inbox_digisafe order by message_date desc");%>
       <table border="1" width="100%" bgcolor="#ECF5FF" cellspacing="1" style="color: #000000" cellpadding="2">
	<tr>
		<td width="27" bordercolor="#A6A6A6" >
		<input type="checkbox" name="checkall"  onclick='checkedAll(myform);'></td>
		<td width="233">
		<p align="center"><font color="#000000">Sender</font></td>
		<td width="504" >
		<p align="center"><font color="#000000">Subject</font></td>
		<td >
		<p align="center">&nbsp;<font color="#000000">Status</font></td>
		<td width="95" >
		<p align="center"><font color="#000000">Date</font></td>
	</tr>


     
<%        while(rs.next()){
         rc= rs.getString(1);%>
         	
         
      <%
         if((receiver.equals(rc)))
              { if(skip<15){i=1;j++;skip++;
                  sender= rs.getString(2);
          	  subject= rs.getString(3);  
         	   date1= rs.getString(7);
                  
                   date2=date1.substring(0,10);
                   check=rs.getInt(8);
                      if(check==0)
                      {%>
                       <tr>
		<td width="27"bgcolor="#B9DCFF" ><input type="checkbox" name="C" value="<%= date1%>"></td>
		<td width="233"bgcolor="#B9DCFF">&nbsp;<%= sender%></td>
		<td width="504"bgcolor="#B9DCFF" >&nbsp;<%= subject%></td>
		
		<td bgcolor="#B9DCFF">
                             <a href="validate.jsp?abc1=<%= date1%>">
		<font size="4" color="#2D96FF">Validate</font></a></td>
		
		<td width="95"bgcolor="#B9DCFF" ><%= date2%></td>
	</tr>

<%}
if(check==1)
{%>
<tr>
		<td width="27" bgcolor="#ECF5FF">
		<input type="checkbox" name="C" value="<%= date1%>"></td>
		<td width="233" bgcolor="#ECF5FF">&nbsp;<%= sender%></td>
		<td width="504" bgcolor="#ECF5FF">&nbsp;<%= subject%></td>
		
                <td bgcolor="#ECF5FF"><font color="#2D96FF"> </font>
               <a href="decrypt_read.jsp?abc=<%= date1%>"><font size="4" color="#2D96FF">&nbsp;Read </font></a>
</td>
                <td width="95" bgcolor="#ECF5FF"><%= date2%></td>
        </tr>

<%}  
if(check==2)
{%>
<tr>
		<td width="27" bgcolor="#ECF5FF">
		<input type="checkbox" name="C" value="<%= date1%>"></td>
		<td width="233" bgcolor="#ECF5FF">&nbsp;<%= sender%></td>
		<td width="504" bgcolor="#ECF5FF">&nbsp;<%= subject%></td>
		
                <td bgcolor="#ECF5FF"><font color="#2D96FF"></font>
               <a href="failure_read.jsp?abc=<%= date1%>"><font size="4" color="#2D96FF">&nbsp;Read</font></a>
</td>
                <td width="95" bgcolor="#ECF5FF"><%= date2%></td>
        </tr>

<%}
 }
           }       
               }

session.setAttribute("counter",String.valueOf(skip));  

                    
if(i==0)
{%>
</table> <p align="center"><b><font color="#525252" size="5">inbox is empty</font></b></p>
</form>
<%}

        }catch(Exception e)
      {
      
      }   
 }else
       {  response.sendRedirect("error.htm");
       }          
      %>       
         
              
 </body>
</html>