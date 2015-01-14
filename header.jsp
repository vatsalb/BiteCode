<html>
<title>
Header
</title>
<link type="text/css" href="css/header.css" rel="stylesheet">
<body>
<div id="header">
<div id="divheader">
<form name="header" method ="post">
<font color="white" face="cambria" style="font-size:50;margin-left:2%;text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333,0px 8px 0px #222,0px 9px 0px #111,0px 10px 10px black;">
<b>Bite</b>
</font>
<font  color="white" face="cambria"style="font-size:50;text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333,0px 8px 0px #222,0px 9px 0px #111,0px 10px 10px black;">
<b>Code</b>
</font>
<%
String varfaculty = "Faculty" ;
String varjobfaculty = (String)session.getAttribute("job");

if(session.getAttribute("username") !=null)
{
%>
<font face="comic sans ms" color="white">Welcomes&nbsp;<%= session.getAttribute("username") %></font>
<%
}
%>
<%
if(session.getAttribute("username") ==null)
{
%>

<a href="signup.jsp"><input type="button" class="class" value="SignUp"   style="margin-right:6%;"/></a>
<% 
}
else 
{
	%>
	<a href="signout.jsp"><input type="button" class="class" value="Signout" style="margin-right:6%;"/></a>
	<%
}
	%>
<a href="aboutus.jsp"><input type="button" class="class"  value="Aboutus" /></a> 

<%
 
if(session.getAttribute("job")!=null && varjobfaculty.equals(varfaculty))
 {
	 %>
<a href="facultymain.jsp"><input type="button" class="class" value="Add Course" /></a>
<%
 }
	 else
	 {
		 %>
<a href="faculty.jsp"><input type="button" class="class" value="Faculties" /></a>
<%
	 }
		 %>
<a href="faq.jsp"><input type="button"  class="class" value="Discuss" /></a>

<a href="welcome.jsp"><input type="button" class="class" value="Home"/></a>

</form>
</div>
</div>
<br><br><br><br>
</body>
</html>
<%
if(session.getAttribute("username") ==null)
{
	%>
<%@ include file="login.html"%>
<%
}
%>