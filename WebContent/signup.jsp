<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/design.css" rel="stylesheet">
<link href="css/materialize.css" rel="stylesheet">
<link href="css/materialize.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

 <div class="row">
 <div class="mdl-layout__drawer">
   
     <%@ include file="header.jsp" %>
  </div>
  <div class="container">
  <div class="panel panel-primary">
  <div class="panel-body">
   <form class="col s12" method="post" action="register.jsp">
      <div class="row">
        <div class="input-field col s6">
          <input  id="first_name" type="text" class="validate" placeholder="First Name">
          <label for="first_name"></label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" type="text" class="validate" placeholder="Last Name">
          <label for="last_name"></label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="contact" type="number" class="validate"placeholder="Contact Number">
          <label for="contact"></label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="vehicle" type="text" class="validate"placeholder="Vehicle Number">
          <label for="vehicle"></label>
        </div>
      </div>
       <div class="row">
        <div class="input-field col s12">
          <input id="model" type="text" class="validate"placeholder="Model Name">
          <label for="model"></label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="dealer" type="text" class="validate"placeholder="Dealer Name">
          <label for="dealer"></label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="city" type="text" class="validate"placeholder="City">
          <label for="city"></label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate" placeholder="Password">
          <label for="password"></label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate"placeholder="Email">
          <label for="email"></label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
         <button type="button" name="sub" class="btn btn-info" class="form-control" id="inputmsg">Submit</button>
          <button type="Reset"  class="btn btn-info" class="form-control" id="inputmsg">Reset</button>
        </div>
      </div>
    </form>
    </div>
  </div>
   </div>
  </div>
        
</body>
</html>