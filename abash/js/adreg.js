
function validateForm() 
{
	
	var un = document.forms["myForm"]["uname"].value;
    var em = document.forms["myForm"]["email"].value;
	var pass = document.forms["myForm"]["password"].value;
	var cpass = document.forms["myForm"]["conpass"].value; 
 
  
	
    if (un == "")
	{ 
        alert("Username is required");
        document.myForm.uname.focus();
        return false;
	}
	if (em == "")
	{ 
        alert("email is required");
        document.myForm.email.focus();
        return false;
	}
     
	
	if (pass == "")
	{ 
        alert("Password is required");
        document.myForm.password.focus();
        return false;
	}
	if (cpass == "")
	{ 
        alert("Confirm your password");
        document.myForm.conpass.focus();
        return false;
	}
	if (cpass != pass)
	{ 
        alert("Password don't match");
        document.myForm.conpass.focus();
        return false;
	}
	
	
}