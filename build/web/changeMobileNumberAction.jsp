<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String email = session.getAttribute("email").toString();
    String mobileNumber = request.getParameter("mobileNumber");
    String password = request.getParameter("password");
    int check = 0;
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select *from users_jsp where password='" + password + "' and email='"+email+"'");
       while(rs.next())
       {
       check=1;
       st.executeUpdate("update users_jsp set mobile_number='"+mobileNumber+"' where email='"+email+"'");
       response.sendRedirect("changeMobileNumber.jsp?msg=done");
    }
    if(check==0)
        response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
    } catch (Exception e) {
        e.printStackTrace();
       // response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
    }
%>