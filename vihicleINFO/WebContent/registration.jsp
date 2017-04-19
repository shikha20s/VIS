<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.css.map" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.css.map" rel="stylesheet">
<link href="bootstrap/css/bootstrap-theme.min.css.map" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css.map" rel="stylesheet">
</head>
<body>
<div>
<%@ include file="header.jsp" %>
</div>
 
 <div class="container"> 
  <h4>Customer Information</h4>
  <form class="form-horizontal" role="form" method="post" action="getcerti.jsp">
  <div class="panel panel-group panel-primary">
  <div class="panel-body"> 
    <div class="form-group">
      <label class="control-label col-sm-2" for="name"> Full Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="age">Age:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="age"name="age" placeholder="Enter Age">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="dob">MM/DD/YYYY</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="dob" name="dob" placeholder="Enter DOB">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="add">Address:</label>
      <div class="col-sm-10">
         <textarea class="form-control" rows="5" id="add" name="add"></textarea>
      </div>
    </div>
 <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">          
        <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="conNum">Contact:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="conNum" placeholder="Enter Contact" name="connumber">
      </div>
    </div>
  </div>  
  </div>
  <h4>Vehicle Information</h4>
  <div class="panel panel-group panel-primary">
    <div class="panel-body">
    <div class="form-group">
      <label class="control-label col-sm-2" for="company">Company Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="company" placeholder="Enter Company Name"name="cname">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="modalno">Modal Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="modalno" placeholder="Enter Modal No" name="modalno">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="chasisno">Chasis Number:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="chasisno" placeholder="Enter Chasis Number"name="chasisno">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="engineno">Engine Number:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="engineno"  name="engineno">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="enginecap">Engine Capacity:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="engineno" placeholder="Enter Engine Capacity" name="enginecapcity">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="color">Color:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="color" placeholder="Enter Color"name="color">
      </div>
    </div>
  
   </div>
   </div>
    <div class="row">
        <div class="input-field col s12"><center>
         <button type="submit" name="sub" class="btn btn-info" class="form-control" id="inputmsg">Submit</button>
          <button type="Reset"  class="btn btn-info" class="form-control" id="inputmsg">Reset</button></center>
        </div>
      </div>
      </form>
  </div>
 
</body>
</html>