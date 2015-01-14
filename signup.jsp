
<html>
<title>
signup
</title>
<link type="text/css" href="css/signup.css" rel="stylesheet">
<head>
<script type="text/javascript" src="js/signup.js">
 </script>
 </head>
 
<body background="images/back.jpg"  bgproperties="fixed">
<%@ include file="header.jsp"%>
<div id="divsignup">]
<font size="6" color="white" face="cambria" style="text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777,0px 6px 10px black;">
<center><b>SignUp</b></center></font>
<br><br>
<div id="divsignup2">
<br>
<form name="signup"  action="register.jsp" onsubmit="return validateSignup()"  method="POST" >

<label class="label">Username:</label>
<input type ="textbox" name="registeruser" class="signup" placeholder="username"/><br><br>
<label class="label">Email-ID:</label>
<input type ="textbox" name="registeremail" class="signup" placeholder="email-id"/><br><br>
<label class="label">Course:</label>

<select name="registercourse" class="signup" >
<option>Engineering</option>
<option>Law</option>
<option>Management</option>
<option>Commerce</option>
</select><br><br>

<label class="label">University:</label>

<input type ="textbox" name="registeruniversity" class="signup" placeholder="university"/><br><br>

<label class="label">Password:</label>

<input type="password" name="registerpassword" class="signup" placeholder="password" /><br><br>

<label class="label">Confirm Password:</label>

<input type="password" name="registerconpassword" class="signup" placeholder="password" /><br><br>

<label class="label">Job:</label>

<select name="registerjob" class="signup" >
<option>Student</option>
<option>Faculty</option>
</select><br><br>

<input type="submit" name="registersubmit" value="SignUp" style="background-color:black;height:40px;width:100px;font-size:10;color:white;margin-left:300px;border:0px  #357EC7;
border-radius:4px;"></b>
</form>
</div>
<br>
</div>
</body>
</html>
<%@include file="footer.jsp"%>