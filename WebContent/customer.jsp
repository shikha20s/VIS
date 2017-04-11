<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/materialize.min.css">
<link rel="stylesheet" type="text/css" href="icons/icon.css">
 <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="bootstrap/js/bootstrap.min.js"></script>

<script src="js/materialize.min.js"></script>

<title>Insert title here</title>
<style>
.demo-layout-waterfall .mdl-layout__header-row .mdl-navigation__link:last-of-type  {
  padding-right: 0;
}
</style>
</head>
<body>

 <div class="mdl-layout__drawer">
  <div class="mdl-layout__drawer">
   
     <%@ include file="header.jsp" %>
  </div>
   
   <div class="container">
     <nav>
      <div class="nav-wrapper teal accent-2 black-text text-darken-2">
           <ul id="nav-mobile" class="right hide-on-med-and-down">
       <li><a href="finanace.jsp">Finance</a></li>
           <li><a href="insurance.jsp">Insurance</a></li>
            <li><a href="service.jsp">Services</a></li>
      </ul>
      </div>
      </nav>
  </div>
  </div>
</body>
</html>