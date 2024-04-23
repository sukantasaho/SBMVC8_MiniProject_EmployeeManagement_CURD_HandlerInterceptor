<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    table {
        border-collapse: collapse;
        width: 70%;
    }
    th, td {
        border: 1px solid black;
        padding: 5px;
        text-align: center;
        
    }
    td
    {
       color:#7B0099;
    }
    th {
        background-color: #0F7DC2;
        color:white;
    }
    .a1
    {
       text-decoration: none;
       color:red;
    }
    .a2
    {
       text-decoration: none;
       color:green;
    }
    h3
    {
        color:red;
        text-align: center;
    }
    #id1
   {
      text-align: center;
      color:green;
   }
</style>
<title>Report Page</title>
</head>
<body>
<h2 style="color:red; text-align: center;">Employee Records</h2>
<hr>
  <c:choose>
       <c:when test="${!empty eList}">
    <table border="1" align="center">
          <tr>
            <th>Record Id</th><th>Name</th><th>Id Type</th><th>Address</th>
            <th>Salary</th><th>Email</th><th>Department</th><th>Add Action</th><th>Edit Action</th><th>Delete Action</th>
          </tr>
          <c:forEach var="emp1"  items="${eList}">
            <tr>
              <td><b>${emp1.id}</b></td><td><b>${emp1.name}</b></td><td><b>${emp1.idType}</b></td><td><b>${emp1.address}</b></td>
              <td><b>${emp1.salary}</b></td><td><b>${emp1.email}</b></td><td><b>${emp1.department}</b></td>
              <td><a href="getForm" class="a2"><b>Add</b></a></td>
              <td><a href="edit?id=${emp1.id}" class="a2"><b>Edit</b></a></td>
              <td><a href="delete?id=${emp1.id}" class="a1" onclick="return confirm('Do you want to delete?')"><b>Delete</b></a></td>
            </tr>
          </c:forEach>
    </table>
  </c:when>
  <c:otherwise>
    <h3><b>Data Not Found!</b></h3>
  </c:otherwise>
  </c:choose>
 <h3 style="text-align: center;"><a href="./">Home</a></h3>
 <c:if test="${!empty res}">
     <h3 id="id1"><b>${res}</b></h3>
 </c:if>
</body>
</html>