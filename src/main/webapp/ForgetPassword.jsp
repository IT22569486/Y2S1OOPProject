<!-- IT22569486
S.M.J.B.Samarakoon -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Update my profile</title>
</head>
<body>

	
	  <form action="Fogetpw" class="form1" method="post" onsubmit="return checkPasswordReg()">

	NIC<br></br>
	<input type="text" name="nic"   required><br></br>
		
	user Name 
	<input type="text" name ="uid" required><br><br>
	
	Enter new Password
	<input type="password" name="pwd" id="pwd1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br></br>
	
	Re-enter new password
	<input type="password" name="pwdre" id="pwd2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  required><br></br>
	
	<input type="submit" class="button" name ="submit" value="update"><br>
	
	
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
	

    
}</script>
	
</body>
</html>