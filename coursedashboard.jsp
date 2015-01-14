<%@include file="header.jsp"%>
<html>
<link type="text/css" href="css/coursedashboard.css" rel="stylesheet">
<body background="images/back.jpg" bgproperties="fixed">

<form name="name" method="POST">
<h3> Add course material </h3> <br>
<input type="file" enctype="multipart/form-data" name="file"> <br>
<input type="submit" value="Upload" >
</form>
</body>
</html>
<%@include file="footer.jsp"%>