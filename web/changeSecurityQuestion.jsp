<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
    String msg=request.getParameter("msg");
    if("done".equals(msg))
    {
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%}%>
<%
    if("wrong".equals(msg))
    {
%>
<h3 class="alert">Your Password is wrong!</h3>
<%}%>
<form action="changeSecurityQuestionAction.jsp" value="post">
<h3>Select Your New Security Question</h3>
<select class="input-style" name="">
    <option value="WHAT WAS YOUR FIRST CAR?">WHAT WAS YOUR FIRST CAR?</option>
    <option value="WHAT IS THE NAME OF YOUR FIRST PET?">WHAT IS THE NAME OF YOUR FIRST PET?</option>
    <option value="WHAT ELEMENTARY SCHOOL DID YOU ATTEND?">WHAT ELEMENTARY SCHOOL DID YOU ATTEND?</option>
    <option value="WHAT IS THE NAME OF THE TOWN WHERE YOU WERE BORN?">WHAT IS THE NAME OF THE TOWN WHERE YOU WERE BORN?</option>
</select> 
 <hr>
 <h3>Enter Your New Answer</h3>
 <input type="text" name="newAnswer" placeholder="Enter New Answer" required="" class="input-style">
<hr>
<h3>Enter Password (For Security)</h3>
<input type="password" name="password" placeholder="Enter Password(For Security)" required="" class="input-style">
<hr>
<button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>