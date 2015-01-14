<html>
<title>
Test Creation
</title>
<link type="text/css" href="css/facultytest.css" rel="stylesheet">
<head>
<script type="text/javascript" src="js/faculty.js">
 </script>
</head>
  <%@include file="header.jsp" %>
  <body background="images/back.jpg" bgproperties="fixed">

<div id="divtest"><br><br>

<form name="testquesnumber">
 <label class="testlabel">Enter Number of Questions </label>
 <input type="text" name="tt"  id="test" class="testinput"/><br><br>
</form>

<div id="form_container">
<form id="testform" style="display:none">
	
    <label class="testlabel">Question: </label><br> <textarea  name="testquestions" class="testtextarea" rows="5" cols="40"> </textarea><br><br><br><br><br>
    <label class="testlabel"> :Answer</label><br> <textarea  name="coursedescription" class="testtextarea" rows="5" cols="40"> </textarea><br><br><br><br><br><br>

</form>
</div>
</div>
