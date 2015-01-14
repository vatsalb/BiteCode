<%@ page import="java.sql.*" %>
<html>
<title>
aboutus
</title>
<link type="text/css" href="css/faculty.css" rel="stylesheet">
<%@include file="header.jsp"%>
<body background="images/back.jpg" bgproperties="fixed">
<div id="divfaculty">
<br>
<font size="6" color="white" face="cambria" style="margin-left:2%;text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777,0px 6px 10px black;">
<center><b>Faculties</b></center>
</font>
<br>
<br>
<%
String faculty1="Faculty";
try
{
	%>
		<%@include file="database.jsp"%>
		<%
		String query= "select RUSER,RUNIVERSITY,RCOURSE from REGISTRATION where RJOB='"+faculty1+"'" ;
        Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		
		while(rs.next())
	{
	String name= rs.getString("RUSER");
    String university=rs.getString("RUNIVERSITY");
    String course=rs.getString("RCOURSE");
	%>
	
	<div id="divfaculty2">
	<br>
	<font face="comic sans ms" size="4" color="white" style="margin-left:25px">
	<ul>

<li>	<%=name%>  from the department of <%=course%>&nbsp;,&nbsp;<%=university%>  </li>
  
	</font>
	<br><br>
	</ul>
	</div>
	<br>

	<%
    }
}

	catch(Exception exception)
	    {
		out.println("Exception : " + exception.getMessage() + "") ;                              
	    }
		
	%>
	
	
</div>
<%@ include file="footer.jsp"%>
</body>
</html>
