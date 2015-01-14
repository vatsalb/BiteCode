<%@ page import="java.sql.*" %>

<html>
<title>
Hello Teacher
</title>
<link type="text/css" href="css/facultyloginwall.css" rel="stylesheet">
<%@include file="header.jsp"%>
<body bgproperties="fixed" background="images/back.jpg">
<%
String facultycurrent=(String)session.getAttribute("username");

try
{
		%>
		<%@include file="database.jsp"%>
		<%
		String query= "select * from COURSE where COURSEFACULTY='"+facultycurrent+"' ";
        Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		
		while(rs.next())
	{
			String coursename= rs.getString("COURSENAME");
            String coursedescription= rs.getString("COURSEDESCRIPTION");
			String coursedate= rs.getString("COURSEDATE");
			String courseduration= rs.getString("COURSEDURATION");
			String courseduration2= rs.getString("COURSEDURATION2");
%>
<div id="divfacultyhome">
<br>
<font face="comic sans ms" color="white" size="3" style="margin-left:25px">
<%=coursename%> by <%=facultycurrent%></font> 

<font face="comic sans ms"  color="white" size="2" style="float:right;margin-right:25px">
Duration : <%=courseduration%><%=courseduration2%></font><hr><br>
<font face="comic sans ms" color="white" size="3">
 <p style="margin-left:25px"> <%=coursedescription%></p><br><br></font>
  <font face="comic sans ms" color="white" size="2" style="float:right;margin-right:25px">
Start Date : <%=coursedate%></font>
<br><br>
<a href="coursedashboard.jsp"><input type="button" name="gotocourse" value="View Course" style="background-color:black;height:40px;width:100px;color:white;margin-left:50px;border:0px  ;
border-radius:4px;"/></a>
<br>
</div>
<%
	}
}
catch(Exception e)
	    {
		out.println("Problem due to:"+e);
	    }
%>
</body>
<%@include file="footer.jsp" %>
</html>
