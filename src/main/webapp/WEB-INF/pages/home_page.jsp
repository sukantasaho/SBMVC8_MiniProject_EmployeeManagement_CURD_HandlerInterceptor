<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
   *{
      margin: opx;
   }
   
   .div1
   {
      color:red;
      text-align: center;
      background-color: white;
      height:40px;
      padding-top: 10px;
      font-size: 30px;
      border-radius: 3px;
      
   }
   .container
   {
       background-color: pink;
       height:40px;
       padding-top: 20px;
       border-bottom: 1px solid red;
       border-radius: 3px;
   }
   .container div
   {
       display: inline-block;
       margin-right: 5px;
   }
   body 
   {
            background-image: url('images/emp.jpg'); /* Specify the path to your image */
            background-size: cover; /* Cover the entire body with the background image */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Do not repeat the background image */
            height: 500px;
   } 
   .btn1
   {
     background-color: #7B0099;
     margin-right: 92%;
     height: 30px;
     text-align: center;
     padding-top: 5px;
     margin-left: 20px;
     border: 1px solid green;
     border-radius: 5px;
     width: 100px;
   }
    .btn2
   {
     background-color: #7B0099;
     margin-right: 92%;
     height: 30px;
     text-align: center;
     padding-top: 5px;
     margin-left: 20px;
     border: 1px solid green;
     border-radius: 5px;
     width: 150px;
   }
   a
   {
     text-decoration: none;
     color:white;
     font-size: 20px;
      
   }
  
</style>
</head>
<body>
<div class="div1">
  <b>Welcome To Employee Management System</b>
</div>
<div class="container">
   <div class="btn1">
     <a href="getForm"><b>Register</b></a>
   </div>
   <div class="btn1">
     <a href="getAllEmployees"><b>Report</b></a>
   </div>
   <div class="btn2">
     <a href="page_report"><b>Report By Page</b></a>
   </div>
</div>
</body>
</html>