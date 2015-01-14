function validateSignup()
{
var a=document.forms["signup"]["registeruser"].value;
if (a==null || a=="")
  {
  alert("Username must be filled out");
  return false;
  }
var b=document.forms["signup"]["registeremail"].value;
if (b==null || b=="")
  {
  alert("Email must be filled out");
  return false;
  }
  var b1=document.forms["signup"]["registeremail"].value;
var atpos=b1.indexOf("@");
var dotpos=b1.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=b1.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
  var c=document.forms["signup"]["registercourse"].value;
if (c==null || c=="")
  {
  alert("Please choose your course");
  return false;
  }
  var d=document.forms["signup"]["registeruniversity"].value;
if (d==null || d=="")
  {
  alert("university must be filled out");
  return false;
  }
  var e=document.forms["signup"]["registerpassword"].value;
if (e==null || e=="")
  {
  alert("password must be filled out");
  return false;
  }
 var f=document.forms["signup"]["registerconpassword"].value;
if (f==null || f=="")
  {
  alert("confirm your password");
  return false;
  }
   var g=document.forms["signup"]["registerjob"].value;
if (g==null || g=="")
  {
  alert(" Please choose your course ");
  return false;
  }
}