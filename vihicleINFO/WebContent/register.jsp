<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="bean.User">
</jsp:useBean>
<jsp:setProperty property="*" name="u"/>

Welcome:-<jsp:getProperty property="name" name="u"/>

<jsp:useBean id="userDao" class="dao.UserDao"></jsp:useBean>
<jsp:setProperty property="u" name="userDao" value="<%=u%>"/>
 <%
 int it=userDao.register();
 
 if(it>0)
 out.println("regsiter sucess");
 else
 out.println("regsiter fail");
 
 
 
  %>
 
</body>
</html>