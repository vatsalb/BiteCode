<html>
<head>
<title> Course Enrollment </title>
<link type="text/css" href="css/facultycoursehome.css" rel="stylesheet">
</head>
 <script type="text/javascript" src="js/faculty.js">
 </script>
<body background="images/back.jpg" bgproperties="fixed">
<div id="divfacultycoursehome"><br>
<font size="6" color="white" face="matura mt script capitals" style="margin-left:2%;text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555,0px 6px 10px black;">
<center><b>
 Course Enrollment </b></center>
 </font>
 <br><br><br><br>
<form  name="facultycourse" method="POST" action="facultycourse.jsp" onsubmit="return validatecourse()" ><b>
 <label class="facultylabel">Name of the Course: </label>
 <input class="facultyinput" type="text" name="coursename"> 
 <br><br>
  <label class="facultylabel">Description: </label><br>
<textarea id="foo" name="coursedescription" class="textarea" rows="5" cols="50"> </textarea> 
<br><br><br><br><br><br><br>
 <label class="facultylabel">Start Date: </label>       
 <input class="facultyinput" type="date" name="coursedate">
 <br><br>
 <label class="facultylabel">Duration: </label>       
  <select class="time" name="courseduration2">
 <option> Weeks</option>
 <option> Months </option>
 </select>
 <input class="timeinput" type="text" name="courseduration">
 <br><br> 
<input type="submit" value="Add Course" style="background-color:black;height:7%;width:15%;color:white;margin-left:50%;border:0px;
border-radius:4px;">
</b>
</form>
</center>
<br>
</div>
</body>
</html>