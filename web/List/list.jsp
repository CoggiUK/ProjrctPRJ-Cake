<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<%
  UserDAO u = new UserDAO(); 
  List<User> lst = u.getUsers();
%>

<html>
  <head>
     <meta charset="utf-8">
    <title>Tiem Banh Ngot</title>
    
  </head>
  <body>
      <h2 align="center">List account</h2>
    <table border="1" align="center">
      <tr>
        <td align="center"> Name </td>
        <td align="center"> Pass </td>
        <td align="center"> Role </td>
      </tr>
      <%
        for(User x: lst) {
      %>
      <tr>
        <td><%= x.getName() %> </td>
        <td><%= x.getPass() %> </td>
        <td><%= x.getRole() %> </td>
      </tr>  
      <% } %>  
    </table>     
    <p><button onclick='window.history.go(-1);'>Back to previous page</button>
    <p><a href="../index.jsp">Back to homepage</a>
</body>

</html>