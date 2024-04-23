<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="stag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Register Page</title>
<style type="text/css">
   .container
   {
      background-color: #E1E8ED; 
      border-radius: 5px;
      border:1px solid blue;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      padding-top: 10px;
      
   } 
   h1
   {
      color:red;
      text-align: center;
   }
   
   select:hover,input:hover
   {
      border: 1px solid red;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      border-radius: 3px;
   }
   #btn
   {
       text-align: center;
        
   }
</style>
</head>
<body>
 
 <h1>Employee Registration Form</h1>
 <hr>
     <%-- <stag:form action="register" method="post" class="container" modelAttribute="emp1">
 <table align="center">
   <tr>
     <td>Name</td>
     <td><stag:input path="name"/></td>
     <td>Id Type </td>
     <td><stag:input  path="idType"/></td>
   </tr>
   <tr>
     <td>Address</td>
     <td><stag:input path="address"/></td>
     <td>Salary</td>
     <td><stag:input path="salary"/></td>
   </tr>
   <tr>
     <td>Email</td>
     <td><stag:input path="email"/></td>
     <td>Department</td>
     <td><stag:input path="department"/></td>
   </tr>
 </table>
  <center>
        <input type="submit" value="Save" class="sub">
        <input type="reset" value="Reset" class="can">
   </center>
 </stag:form> --%>
 <div class="container">
   <stag:form action="register" method="post" modelAttribute="emp1">
  <div class="row justify-content-md-center">
       <div class="form-group col-md-4">
         <label>Name</label>
         <stag:input class="form-control"  path="name"/>
       </div>
       <div class="form-group col-md-4">
         <label>Id Type</label>
         <stag:input class="form-control" path="idType"/>
       </div>
  </div>
 
  <div class="row justify-content-md-center">
       <div class="form-group col-md-4">
         <label>Address</label>
         <stag:input class="form-control"  path="address"/>
       </div>
       <div class="form-group col-md-4">
         <label>Salary</label>
         <stag:input class="form-control" path="salary"/>
       </div>
  </div>
  
  <div class="row justify-content-md-center">
       <div class="form-group col-md-4">
         <label>Email</label>
         <stag:input class="form-control"  path="email"/>
       </div>
       <div class="form-group col-md-4">
         <label>Department</label>
         <stag:input class="form-control" path="department"/>
       </div>
  </div>
  <div class="form-group" id="btn">
      <input class="btn btn-primary" type="submit" value="Register">
      <input class="btn btn-danger" type="reset" value="Reset">
  </div> 
</stag:form>
 </div>
 <h3 style="text-align: center;"><a href="getAllEmployees">Report</a></h3>
 <h3 style="text-align: center;"><a href="./">Home</a></h3>
</body>
</html>