<%@ page import="java.sql.*" %>
<html>
<body background="images/back.jpg">
<%
	String luser=request.getParameter("loginuser");
	String lpassword=request.getParameter("loginpassword");
    String loginradio=request.getParameter("loginradio");
   
	try{
		%>
		<%@include file="database.jsp"%>
		<%
		String query= "select * from REGISTRATION where RUSER='"+luser+"' and RPASSWORD='"+lpassword+"' and RJOB='"+loginradio+"'" ;
        Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		
if (rs.next())
{
	
	if( session.getAttribute("username")==null)
	{
	 session.setAttribute("username",luser);
     session.setAttribute("job",loginradio);
	}
    else
	{
 %>
<br><br><br>
<font face="cambria" color="white"><center>You are  already LoggedIn from somewhere else</center></font>

<%
	}	
 response.sendRedirect("welcome.jsp");
}
		else
			{
%>

<br><br><br>	
<font face="cambria" color="white"><center>Invalid username/Password</center></font>
	<%@ include file="front.jsp"%>
<%
			}  
	}
	
catch(Exception exception)
	{
		out.println("Exception : " + exception.getMessage() + "") ;                              
	}
%>