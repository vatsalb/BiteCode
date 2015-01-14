<%@ page import="java.sql.*" %>
<html>
<title>
body
</title>
   <link type="text/css" href="css/body.css" rel="stylesheet">
<body>
<div id="divbody" >
<%
try
{
		%>
		<%@include file="database.jsp"%>
		<%
		String queryb= "select * from COURSE ";
        Statement stb=con.createStatement();
		ResultSet rsb=stb.executeQuery(queryb);
		
		while(rsb.next())
	{
			String coursename= rsb.getString("COURSENAME");
            String coursedescription= rsb.getString("COURSEDESCRIPTION");
			String coursedate= rsb.getString("COURSEDATE");
			String courseduration= rsb.getString("COURSEDURATION");
			String courseduration2= rsb.getString("COURSEDURATION2");
			String coursefaculty=rsb.getString("COURSEFACULTY");
%>
<div id="divfacultyhome">
<br>
<div id="divfacultyhome2">
<br>
<font face="comic sans ms" color="white" size="3" style="margin-left:30px;text-transform:uppercase;">
<%=coursename%> by <%=coursefaculty%></font> 

<font face="comic sans ms"  color="white" size="2" style="float:right;margin-right:30px">
Duration : <%=courseduration%><%=courseduration2%></font><hr><br>
<font face="comic sans ms" color="white" size="3">
 <p style="margin-left:30px"> <%=coursedescription%><br></p><br></font>
  <font face="comic sans ms" color="white" size="2" style="margin-left:30px">
Start Date : <%=coursedate%></font>
<br>

<%
if(session.getAttribute("username")==null)
		{
	%>

<a href="welcome.jsp"><input type="button" name="gotocourse" value="View Course" class="coursebutton"/></a>
<%
		}
else
		{
%>
<a href="coursedashboard.jsp"><input type="button" name="gotocourse" value="View Course" class="coursebutton"/></a>
<%
		}
%>
<br><br><br>
</div>
<br>
<hr style="background-color:rgba(0,0,0,0.9);height:3px;border:0px ;">
</div>



<%
	}
}
catch(Exception e)
	    {
		out.println("Problem due to:"+e);
	    }
%>
</div>
</body>
</html>