<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%@include file="header.jsp" %>
<%@include file="../footer.jsp" %>
<html>
    <head>
        <link rel="stylesheet" href="css/messageUs.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <title>Message Us</title>
    </head>
    <body style="background-color: burlywood">
        <div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
            <%
                String msg = request.getParameter("msg");
                if ("valid".equals(msg)) {
            %>
        <h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
        <%}%>
        <%
            if ("invalid".equals(msg)) {
        %>
        <h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
        <%}%>
        <form action="messageUsAction.jsp" method="post">
            <input class="input-style" name="subject" type="text" placeholder="Subject" required="">
            <hr><!-- comment -->
            <textarea class="input-style" name="body" placeholder="Enter your message" required=""></textarea>
            <hr><!-- comment -->
            <button class="button" type="submit">Save </button>
        </form>
        <br><br><br>
    </body>
</html>