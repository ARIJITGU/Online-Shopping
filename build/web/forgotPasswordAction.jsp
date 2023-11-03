<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String email = request.getParameter("email");
    String mobile_number = request.getParameter("mobile_number");
    String securityQuestion = request.getParameter("securityQuestion");
    String answer = request.getParameter("answer");
    String newPassword = request.getParameter("newPassword");
    int check = 0;
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT *FROM users_jsp where email='" + email + "' and mobile_number='" + mobile_number + "' and securityQuestion='" + securityQuestion + "' and answer='" + answer + "'");
        while (rs.next()) {
            check = 1;
            st.executeUpdate("update users_jsp set password='" + newPassword + "' where email='" + email + "'");
            response.sendRedirect("forgotPassword.jsp?msg=done");
        }
        if(check==0)
        {
        response.sendRedirect("forgotPassword.jsp?msg=invalid");
    }
    } catch (Exception e) {
    System.out.print(e);
    }
%>