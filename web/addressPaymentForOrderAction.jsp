<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    String email = session.getAttribute("email").toString();
    String address = request.getParameter("address").toUpperCase();
    String city = request.getParameter("city").toUpperCase();
    String state = request.getParameter("state").toUpperCase();
    String country = request.getParameter("country").toUpperCase();
    String mobileNumber = request.getParameter("mobileNumber");
    String paymentMethod = request.getParameter("paymentMethod");
    String transactionId = "";
    transactionId = request.getParameter("transactionId");
    String status = "bill";
    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("update users_jsp set address=?,city=?,state=?,country=?,mobile_number=? where email=?");
        ps.setString(1, address);
        ps.setString(2, city);
        ps.setString(3, state);
        ps.setString(4, country);
        ps.setString(5, mobileNumber);
        ps.setString(6, email);
        ps.executeUpdate();

        PreparedStatement ps1 = con.prepareStatement("update cart_jsp set address=?,city=?,state=?,country=?,mobileNumber=?,orderDate=now(),deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY),paymentMethod=?,transactionId=?,status=? where email=? and address is NULL");
        ps1.setString(1, address);
        ps1.setString(2, city);
        ps1.setString(3, state);
        ps1.setString(4, country);
        ps1.setString(5, mobileNumber);
        ps1.setString(6, paymentMethod);
        ps1.setString(7, transactionId);
        ps1.setString(8, status);
        ps1.setString(9, email);
        ps1.executeUpdate();
        response.sendRedirect("bill.jsp");
    } catch (Exception e) {
        System.out.println(e);
    }
%>