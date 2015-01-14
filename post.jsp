<%@ page import="java.sql.*" %>
<html>
<body>
<% 
String post=request.getParameter("postt");
String user = (String)session.getAttribute("username");
String user1= "   :    ";

String post1=user +user1+ post;

  boolean flag;
try{
		%>
		<%@include file="database.jsp"%>
		<%
 				String query="insert into post values( '"+post1+"')";
 		flag=true;
		Statement st=con.createStatement();
		int p=st.executeUpdate(query);
}
	 catch(Exception exception)
     {
          out.println("Exception : " + exception.getMessage() + "+ in q&A");
          flag=false;
     }
  %>
<jsp:forward page="faq.jsp"></jsp:forward> 
	