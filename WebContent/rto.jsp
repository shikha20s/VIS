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
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"><!-- bootsrap. min.css-->
  <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
  <script src="bootstrap/js/jquery.min.js"></script><!-- jquery. min.js-->
  <script src="bootstrap/js/bootstrap.min.js"></script><!-- bootsrap. min.js-->

<script src="bootstrap/js/jquery.min.js"></script>

<title>RTO Section</title>
<style>
.demo-layout-waterfall .mdl-layout__header-row .mdl-navigation__link:last-of-type  {
  padding-right: 0;
}
</style>
</head>
<body>


<div class="container">
  
  <!-- Trigger the modal with a button -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Renewal Section</h4>
        </div>
        <div class="modal-body">
           <div class="form-group" width="80">
    <label for="inputregister" class="col-sm-2 control-label">Enter Registration Number</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputregister" placeholder="Email">
    </div>
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <button type="submit" class="btn btn-info">Submit</button>
               </div>
    </div>
   
  </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

 <div>
 <%@ include file="header.jsp" %>
 </div>
 <div class="container">
<div class="mdl-layout__drawer">
     <nav class="navbar">
    <div class="nav-wrapper teal accent-2 black-text text-darken-2">
       <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><button type="button" class="btn btn-info btn-lg" name="registration">Registration</button></li>
         <li><button type="button" class="btn btn-info btn-lg" name="tranfer">Transfer</button></li>
                    <li><button type="button" class="btn btn-info btn-lg" name="logut">Logout</button></li>
         <li> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Renewal</button></li>
           </ul>
    </div>
  </nav>
  </div>
  </div>  
</body>
</html>