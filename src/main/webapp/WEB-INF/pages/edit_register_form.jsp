<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="stag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Page</title>
<style type="text/css">
   .container
   {
      background-color: #E1E8ED; 
      padding: 20px;
      border-radius: 10px;
      font-size: 20px;
      margin-left: 400px;
      margin-right: 400px;
      border:1px solid blue;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      
   }
   td
   {
      padding-top:10px;
      padding-left: 20px;
   }
   .sub
   {
     width:120px;
     height:30px;
     color:white;
     border: none;
     border-radius: 5px;
     background-color: green;
     margin-right: 10px;
   }
   .can
   {
     width:120px;
     height:30px;
     color:white;
     border: none;
     border-radius: 5px;
     background-color: maroon;
     margin-left: 20px;
      
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
   input
   {
        text-align: center;
        width:200px;
   }
   center
   {
      padding-top: 20px;
      
   }
</style>
</head>
<body>
 
 <h1>Update The Employee Details</h1>
 <hr>
     <stag:form  action="update" class="container" modelAttribute="emp">
 <table align="center">
   <tr>
     <td>Name</td>
     <td><stag:input path="name"/></td>
     <td>Id Type </td>
     <td><stag:input path="idType"/></td>
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
   <tr>
     <td>Id</td>
     <td><stag:input path="id" readonly="true" /></td>
   </tr>
 </table>
  <center>
        <input type="submit" value="Update" class="sub">
        <input type="reset" value="Reset" class="can">
   </center>
 </stag:form>
 <h3 style="text-align: center;"><a href="getAllEmployees">Report</a></h3>
 <h3 style="text-align: center;"><a href="./">Home</a></h3>
</body>
</html>