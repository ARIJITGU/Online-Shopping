<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password").toLowerCase();
    if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
        session.setAttribute("email", email);
        response.sendRedirect("admin/adminHome.jsp");
    } else {
        int z = 0;
        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select *from users_jsp where email='" + email + "' and password='" + password + "'");
            while (rs.next()) {
                z = 1;
                session.setAttribute("email", email);
                response.sendRedirect("home.jsp");
            }
            if (z == 0) {
                response.sendRedirect("login.jsp?msg=notexist");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?msg=notexist");
        }
    }
%>