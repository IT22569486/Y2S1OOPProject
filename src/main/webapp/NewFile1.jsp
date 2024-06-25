<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>	
<html>
<head>
	<title>Online Pet Care System</title>
	<link rel="stylesheet" href="noticeBoard.css">

</head>
<body>
<h1 align="right">PetsStop</h1><br>

<form class="form1" action="submitRegis.php" method="POST" onsubmit="return checkPasswordReg()">
<center><h3>Registration</h2></center>
	First Name<br></br>
	<input type="text" name="firstName" placeholder="First Name" required><br></br>
	
	Last Name<br></br>
	<input type="text" name="lastName" placeholder="Last Name" required><br></br>

	Mobile Number<br></br>
	<input type="phone" name="phoneNumber" placeholder="phoneNo" pattern= "[0-9]{10}" required><br></br>
	
	E-mail Address<br></br>
	<input type="email" name="email" placeholder="abc@gmail.com" required><br></br>
	
	Address<br></br>
	<textarea name="address" rows="4" cols="50"></textarea><br></br>
	
	DOB<br></br>
		<input type="date" name="DOB"><br><br>
	Password
	<input type="password" name="pwd" id="pwd1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br></br>
	
	Re-enter password
	<input type="password" name="pwdre" id="pwd2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br></br>
	
	Accept terms & conditions <input type="checkbox"id="checkboxReg"  onclick="enableSubmitReg()"><br><br>
	
	<input type="submit"  class ="button" id="submit1" value="Submit"  disabled><br></br>
	</form>
	
<script>	
function checkPasswordReg()
{
	if( document.getElementById("pwd1").value==document.getElementById("pwd2").value )
	{
		return true;
	}
	else
	{
		
		alert("Paaswords are not same which you were entered!");
		return false;
	}
	
}
function enableSubmitReg(){
    if(document.getElementById("checkboxReg").checked){
        document.getElementById("submit1").disabled=false;
    }
    else{
        document.getElementById("submit1").disabled=true;
    }
    
}

	
</script>
</body>
</html>