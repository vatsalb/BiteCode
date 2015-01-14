
<html>
<title>
welcome 
</title>
<body bgproperties="fixed" background="images/back.jpg">
<%
String coljob=(String)session.getAttribute("job");
String student="Student";
if(session.getAttribute("username")==null)
{
response.sendRedirect("front.jsp");
}
else 
{    
   if(coljob.equals(student))
    {
   response.sendRedirect("student.jsp");
    }
   else 
    {
   response.sendRedirect("facultyloginwall.jsp");
    }
}
%>


</body>
</html>
