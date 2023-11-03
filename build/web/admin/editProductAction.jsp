<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String category = request.getParameter("category");
    String price = request.getParameter("price");
    String active = request.getParameter("active");
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        st.executeUpdate("update product_jsp set name='" + name + "',category='" + category + "',price='" + price + "',status='" + active + "' where id='" + id + "'");
        if (active.equals("No")) {
            st.executeUpdate("delete from cart_jsp where product_id='" + id + "' and address is NULL");
        }
        response.sendRedirect("allProductEditProduct.jsp?msg=done");
    } catch (SQLException e) {
        System.out.println(e);
         response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
    }
%>
