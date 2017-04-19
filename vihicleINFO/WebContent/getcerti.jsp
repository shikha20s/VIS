<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" type="text/css" href="css/material.min.css">
<link rel="stylesheet" type="text/css" href="icons/icon.css">
<link rel="stylesheet" type="text/css" href="css/material-modal.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"><!-- bootstrap. min.css-->
  <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
  <script src="bootstrap/js/jquery.min.js"></script><!-- jquery. min.js-->
  <script src="bootstrap/js/bootstrap.min.js"></script><!-- bootstrap. min.js-->
<script src="bootstrap/js/jquery.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<div class="mdl-layout__drawer">
   
     <%@ include file="header.jsp" %>
  </div>
  <%@page import="bean.User"%>  
<jsp:useBean id="u" class="bean.User">
</jsp:useBean>
<jsp:setProperty property="*" name="u"/>

Welcome:-<jsp:getProperty property="name" name="u"/>
<jsp:useBean id="r" class="bean.Reg">
</jsp:useBean>
<jsp:useBean id="userDao" class="dao.UserDao"></jsp:useBean>
<jsp:setProperty property="u" name="userDao" value="<%=u%>"/>
 <%
 int it=userDao.register();
 
 if(it>0)
 out.println("regsiter sucess");
 else
 out.println(it);
 
 
 
  %>
</body>
</html>