function validateLogin() {
    var x = document.forms["login"]["email"].value;
    var pwds = document.forms["login"]["password"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
        if (pwds == "")
        {
        	alert("No Password Entered!!");
        	return false;
        }
    }
}