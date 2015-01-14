function post()
{
var x=document.forms["postq"]["postt"].value;
if (x==null || x=="")
  {
  alert("Post area must be filled out");
  return false;
  }
if(document.forms["postq"]["postt"].value.length<8)
{
  alert("Question must be greater than 8 letter");
return false;
}
}