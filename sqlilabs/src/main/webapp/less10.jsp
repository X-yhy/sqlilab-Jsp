<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="db.SqlConnection" %>
<%@ page import="java.sql.SQLException" %>

<html>
<head>
    <title>Less-10 Blind- Time based- Double Quotes- String </title>
</head>

<body bgcolor="#000000">
<div style=" margin-top:70px;color:#FFF; font-size:23px; text-align:center">Welcome&nbsp;&nbsp;&nbsp;<font
        color="#FF0000"> Sqli-labs(Java) </font><br>
    <font size="4" color="#FFFF00">

        基于时间的双引号盲注</br></br></br>
<%
    String id = request.getParameter("id");
    ResultSet rs = null;
    SqlConnection con = new SqlConnection();
    if(id != null) {
        String sql ="SELECT * FROM users WHERE id=\"" + id + "\" LIMIT 0,1";
        try {
            rs = con.select(sql);
            if(rs.next()) {
%>
            <font size='5' color= '#99FF00'>
                You are in...........
            </font>
<%            }
        } catch (SQLException e) {
%>
            <font size='5' color= '#99FF00'>
                You are in...........
            </font>
<%
        }
    }
    con.colse();
%>

<%
        if(id == null || id.equals("")) {
 %>
        <font color= "#0000ff" font size= 3>
            </br>Please input the ID as parameter with numeric value</br>
        </font>
<%
    }
%>
    </font> </div></br></br></br><center>
    <img src="../images/Less-10.jpg" /></center>
</body>
</html>