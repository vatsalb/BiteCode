function validatecourse()
{
var a=document.forms["facultycourse"]["coursename"].value;
if (a==null || a=="")
  {
  alert("course name must be filled out");
  return false;
  }
  var b=document.forms["facultycourse"]["coursedescription"].value;
if (b==null || b=="")
  {
  alert("course descripition must be filled out");
  return false;
  }
 if(document.forms["facultycourse"]["coursedescription"].value.length<50)
{
  alert("Description must be greater than 50 letters");
return false;
}
  var d=document.forms["facultycourse"]["coursedate"].value;
if (d==null || d=="")
  {
  alert("course date must be filled out");
  return false;
  }
  var e=document.forms["facultycourse"]["courseduration"].value;
if (e==null || e=="")
  {
  alert("course duration must be filled out");
  return false;
  }
  var f=document.forms["facultycourse"]["courseduration2"].value;
if (f==null || f=="")
  {
  alert("weeks or months must be filled out");
  return false;
  }
}
$(document).ready(function(){
    var textArea = $('#foo');
    var maxRows = textArea.attr('rows');
    var maxChars = textArea.attr('cols');
    textArea.keypress(function(e){
        var text = textArea.val();
        var lines = text.split('\n');
        if (e.keyCode == 13){
            return lines.length < maxRows;
        }
        else{ //Should check for backspace/del/etc.
            var caret = textArea.get(0).selectionStart;
            console.log(caret);
            
            var line = 0;
            var charCount = 0;
            $.each(lines, function(i,e){
                charCount += e.length;
                if (caret <= charCount){
                    line = i;
                    return false;
                }
                //\n count for 1 char;
                charCount += 1;
            });
                   
            var theLine = lines[line];
            return theLine.length < maxChars;
        }
    });
    
});

function toggleFormVisibility() {

    var numFormsNeeded = parseInt(document.getElementById('test').value);
    numFormsNeeded = isNaN(numFormsNeeded) ? 1 : Math.max(numFormsNeeded, 1);
    var j=0;
    var neededChildren = numFormsNeeded - document.getElementById('form_container').children.length + 1;

    for (var i = 0; i < neededChildren; i++) {
        var frm_element = document.getElementById('testform').cloneNode(true);
        var vis = frm_element.style;
        vis['display'] = 'block';
		var j=i+1;
        document.getElementById("form_container").appendChild(frm_element);
    }

}
document.getElementById('test').addEventListener('keyup', toggleFormVisibility);
