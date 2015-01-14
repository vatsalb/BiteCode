<%
 session.setAttribute("username",null);
session.setAttribute("job",null);
	  session.invalidate();
	  response.sendRedirect("welcome.jsp");
%>