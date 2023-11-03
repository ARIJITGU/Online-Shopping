<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/signup-style.css">
        <title>Signup</title>
    </head>
    <body style="background-color: #555555">
        <div id='container'>
            <div class='signup'>
                <form action="signupAction.jsp" method="post"> 
                    <input type="text" name="name" placeholder="ENTER YOUR NAME" required>
                    <input type="email" name="email" placeholder="ENTER EMAIL" required>
                    <input type="number" name="mobile_number" placeholder="ENTER YOUR MOBILE NUMBER" required>
                    <select name="securityQuestion" required>
                        <option value="WHAT WAS YOUR FIRST CAR?">WHAT WAS YOUR FIRST CAR</option>
                        <option value="WHAT IS THE NAME OF YOUR FIRST PET?">WHAT IS THE NAME OF YOUR FIRST PET</option>
                        <option value="WHAT ELEMENTARY SCHOOL DID YOU ATTEND?">WHAT ELEMENTARY SCHOOL DID YOU ATTEND</option>
                        <option value="WHAT IS THE NAME OF THE TOWN WHERE YOU WERE BORN?">WHAT IS THE NAME OF THE TOWN WHERE YOU WERE BORN</option>
                    </select>
                    <input type="text" name="answer" placeholder="ENTER ANSWER" required>
                    <input type="PASSWORD" name="password" placeholder="ENTER PASSWORD" required>
                    <input type="submit" value="SIGN UP">
                </form>

                <h2><a href="login.jsp">Login</a></h2>
            </div>
            <div class='whysign'>
                <%
                    String msg = request.getParameter("msg");
                    if ("valid".equals(msg)) {
                %>
                <h1>Successfully REGISTERED!</h1>
                <%}
                %>
                <%
                    if ("invalid".equals(msg)) {
                %>
                <h1>Some thing Went Wrong! Try Again !</h1>
                <%}%>
                <h2>Online Shopping</h2>
                <p style="color:aqua">The Online Shopping System created by ARIJIT GUHA is the application that allows the users to shop online without going to the shops to buy items.</p>
            </div>
        </div>

    </body>
</html>