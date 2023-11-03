<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String email = session.getAttribute("email").toString();
    String subject = request.getParameter("subject").toUpperCase();
    String body = request.getParameter("body").toUpperCase();
    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("insert into message_jsp(email,subject,body) values (?,?,?)");
        ps.setString(1, email);
        ps.setString(2, subject);
        ps.setString(3, body);
        ps.executeUpdate();
        response.sendRedirect("messageUs.jsp?msg=valid");

    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("messageUs.jsp?msg=valid");
    }
%>
