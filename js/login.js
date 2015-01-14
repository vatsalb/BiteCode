function validatelogin()
{

var x=document.forms["login"]["loginuser"].value;
if (x==null || x=="")
  {
  alert("Username must be filled out");
  return false;
  }
  var y=document.forms["login"]["loginpassword"].value;
if (y==null || y=="")
  {
  alert("password must be filled out");
  return false;
  }
  }