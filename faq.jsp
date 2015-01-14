<%@ page import="java.sql.*" %>
<html>
<title>
FAQ
</title>
<link type="text/css" href="css/faq.css" rel="stylesheet">
<head>
<script type="text/javascript" src="js/faq.js">
 </script>
</head>
<%@ include file="header.jsp"%>
<body background="images/back.jpg"  bgproperties="fixed">
<div id="divforum" >
<br><center><b>
<font size="6" color="white" face="cambria" style="margin-left:2%;text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777,0px 6px 10px black;">
Discussion Forum
 </font></b><br>

<%
if(session.getAttribute("username")==null)
{
%>
<p><font face="cambria" color="white" size="3">Hello,Please Login to Post Your Queries</font></p>
<%
}else{
%>
<form name="postq"  method="post" action="post.jsp" onsubmit="return post()">
<br>
<font face="comic sans ms" color="#357EC7">
<center>
<textarea  name="postt" rows="6" cols="50%" style="color:black;text-indent:10px;font-size:17px;border:0px;
border-radius:4px;">
</textarea>
</center>
</font>
<input type="submit" name="postsubmit" value="Post" style="background-color:black;height:10%;width:15%;color:white;margin-left:1%;border:0px  ;
border-radius:4px;"/>
</center>
</form>
<%
}
%>
<br>
</div>
<div id="divpost">
<br>
<div id="divforum2">
<br>
<font face="comic sans ms" color="white"> 
<%
  try
     {
        %>
		<%@include file="database.jsp"%>
		<%
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT  * FROM post " );
    	  while (rs.next())
          {
               String question = rs.getString("postentry");
  %>
&nbsp;
<%=question%>
<br><br>
<%
   }
     }

     catch(Exception exception)
     {
          out.println("Exception : " + exception.getMessage() + "");
     }    
   %>
</font>
</div>
<br>
</div>
</body><br>
<%@include file="footer.jsp"%>
</html>

