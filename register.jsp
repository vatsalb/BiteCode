<%@ page import="java.sql.*" %>
<%@ page import="java.*" %>
<html>
<title>
Registration
</title>
<body>
<%
	String ruser=request.getParameter("registeruser");
	String remail=request.getParameter("registeremail");
	String rcourse=request.getParameter("registercourse");
    String runiversity=request.getParameter("registeruniversity");
	String rpassword=request.getParameter("registerpassword");
	String rjob=request.getParameter("registerjob");
	Connection con;
	ResultSet rs;
	Statement stmt;
try{
		%>
		<%@include file="database.jsp"%>
		<%
		String query= "select * from REGISTRATION where ruser='"+ruser+"' or remail='"+remail+"' " ;
 		stmt=con.createStatement();
	    rs=stmt.executeQuery(query);

if (rs.next())
{
%>
 <font face="comic sans ms" color="white">
 <center>
 <br><br><br><br>
 Username/E-mail already exists
 </center></font>
 <%@ include file="signup.jsp"%>
<%
}
else
{
try{
	%>
		<%@include file="database.jsp"%>
		<%
	String query1="insert into REGISTRATION values('"+ruser+"','"+remail+"','"+rcourse+"','"+runiversity+"','"+rpassword+"','"+rjob+"')";
    stmt=con.createStatement();
	int n=stmt.executeUpdate(query1);
}
	catch(Exception e)
	{
		out.println("Problem due to:"+e);
	}
%>
<br><br><br><br>
<font face="comic sans ms" color="white">
<center>
<%= ruser%> Welcome to our Portal
</center></font>
<jsp:forward page="welcome.jsp"></jsp:forward>
	<%
}
	}
	catch(Exception e)
	{
		out.println("Problem due to:"+e);
	}
	%>
</body>
</html>
