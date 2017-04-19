<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/material.min.css">
<link rel="stylesheet" type="text/css" href="icons/icon.css">
<link rel="stylesheet" type="text/css" href="css/material-modal.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.css.map" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.css.map" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.min.css.map" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css.map" rel="stylesheet">
<script src="js/materialize.js"></script>


<title>Insert title here</title>
<style>
.demo-layout-waterfall .mdl-layout__header-row .mdl-navigation__link:last-of-type  {
  padding-right: 0;
}
</style>
</head>
<body>
<div class="container">
<form class="form-horizontal">
<div class="form-group" width="80" >
<label for="drop" class="col-sm-2 control-label">LogIn As</label>
<div class="col-sm-10">
			<select class="form-control" id="drop">
				<option> Admin </option>
				<option>Customer</option>
				<option>Police</option>
				<option>RTO</option>
			</select>
</div>
</div>
  <div class="form-group" width="80">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
  </div>
  <div class="form-group" width="80">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <button type="submit" class="btn btn-info">Sign in</button>
         <button type="button" class="btn btn-info" name="forget">Forget Password</button>
      </div>
    </div>
  </div>
   <div class="form-group">
    <label for="inputmsg" class="col-sm-2 control-label">New User</label>
    <div class="col-sm-10">
       <button type="button" name="signup" class="btn btn-info" class="form-control" id="inputmsg">Sign Up</button>
    </div>
  </div>  
</form>            
  </div>      
<script src="js/material.min.js"></script>
<script src="js/material-modal.min.js"></script>
	
</body>
</html>