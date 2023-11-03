<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile_number = request.getParameter("mobile_number");
    String securityQuestion = request.getParameter("securityQuestion");
    String answer = request.getParameter("answer");
    String password = request.getParameter("password");
    String address = "";
    String city = "";
    String state = "";
    String country = "";
    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("insert into users_jsp values(?,?,?,?,?,?,?,?,?,?);");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobile_number);
        ps.setString(4, securityQuestion);
        ps.setString(5, answer);
        ps.setString(6, password);
        ps.setString(7, address);
        ps.setString(8, city);
        ps.setString(9, state);
        ps.setString(10, country);
        ps.executeUpdate();
        response.sendRedirect("signup.jsp?msg=valid");

    } catch (SQLException e) {
        System.out.print(e);
        response.sendRedirect("signup.jsp?msg=invalid");

    }
%>