
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/signup-style.css">
        <title>Login</title>
    </head>
    <body style="background-color: #555555">
        <div id='container'>
            <div class='signup'>
                <form action="loginAction.jsp" method="">
                    <input type="email" name="email" placeholder="Enter e-mail Address" required>
                    <input type="password" name="password" placeholder="Enter Password" required>
                    <input type="submit" value="Log in">

                </form>
                <h2><a href="signup.jsp">SignUp</a></h2>
                <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
            </div>
            <div class='whysignLogin'>
                <%
                    String msg = request.getParameter("msg");
                    if ("notexist".equals(msg)) {
                %>
                <h1>Incorrect Username or Password</h1>
                <% } %>
                <% if ("invalid".equals(msg)) {%>
                <h1>Some thing Went Wrong! Try Again !</h1>
                <%}%>
                <h2>Online Shopping</h2>
                <p style="color: aqua">The Online Shopping System developed by ARIJIT GUHA is the application that allows the users to shop online without going to the shops to buy items.</p>
            </div>
        </div>

    </body>
</html>