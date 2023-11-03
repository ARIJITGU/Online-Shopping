<%@page import="java.sql.*" %>
//<%@page import="java.sql.*" %>
<%@page import="Project.ConnectionProvider" %>
<%
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        String q1 = "create table users_jsp(name varchar(30),email varchar(40) primary key,mobile_number bigint,sequrityQuestion varchar(30),answer varchar(30),password varchar(40),address varchar(30),city varchar(20),state varchar(20),country varchar(30));";
        //System.out.print(q1);
        st.execute(q1);
        //System.out.print("table is successfully");
        con.close();
    } catch (Exception e) {
    System.out.print(e);
    }
%>