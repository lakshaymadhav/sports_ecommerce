<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>

<%if("wrong".equals(msg)){ %>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changemobileAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 <input type="number" class="input-style" name="mobilenumber" placeHolder="Enter Mobile Number">
 <hr>
<h3>Enter Password (For Security)</h3>
<input type="password" class="input-style" name="password" placeHolder="Enter password">
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>