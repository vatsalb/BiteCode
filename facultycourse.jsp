<%@ page import="java.sql.*" %>
<html>
<head>
<title> Add Course </title>
</head>
<%
String coursename= request.getParameter("coursename");
String coursedescription= request.getParameter("coursedescription");
String coursedate= request.getParameter("coursedate");
String courseduration= request.getParameter("courseduration");
String courseduration2= request.getParameter("courseduration2");
String coursefacultycurrent=(String)session.getAttribute("username");
Connection con;
ResultSet rs;
Statement stmt;
try{
	%>
		<%@include file="database.jsp"%>
		<%
	String coursequery= " insert into COURSE values('"+coursename+"','"+coursedescription+"','"+coursedate+"','"+courseduration+"','"+courseduration2+"','"+coursefacultycurrent+"')";
    stmt=con.createStatement();
	int n=stmt.executeUpdate(coursequery);
   }
	catch(Exception e)
	    {
		out.println("Problem due to:"+e);
	    }
		response.sendRedirect("coursedashboard.jsp");
		%>
