<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>HMS Staff REGISTRATION</title>
</head>
<body>
<%
	if (session.getAttribute("SessionUname")==null){
		response.sendRedirect("Login.jsp");
		}
%>
<nav>
		<div class="header">
			<div  class="navbar">
				<div class="logo">HMS Hospital</div>
				<ul>
					<li><a href="AdminHomepage.jsp">AdminHome</a></li>
					<li><a href="Staff.jsp">Staff</a></li>
					
					<li><a href="Login.jsp"><button class="btn1">Login</button></a></li>
					<li><a href="LogOut.jsp"><button class="btn2">log out</button></a></li>
				
				</ul>
		</div>
		</div>
	</nav>
		<br><br/><br><br/><br><br/><br><br/>
	<form action="insertStaff" class="form1" method="post" onsubmit="return checkStaffMemPassword()">
		
		<center> <h3>User Registration</h2> </center>
	First Name<br></br>
	<input type="text" name="fname" placeholder="First Name" required><br></br>
	
	Last Name<br></br>
	<input type="text" name="lname" placeholder="Last Name" required><br></br>
	
	NIC<br></br>
	<input type="text" name="nic" placeholder="xxxxxxxxxxxx"  required><br></br>

	Mobile Number<br></br>
	<input type="tel" name="pn" placeholder="phoneNo" pattern= "[0-9]{10}" required><br></br>
	
	E-mail Address<br></br>
	<input type="email" name="email" placeholder="abc@gmail.com" required><br></br>
	
	Address<br></br>
	<textarea name="address" rows="4" cols="50"></textarea><br></br>
	
	DOB<br></br>
	<input type="date" name="dob"><br><br>
	
	Position<br></br>
	<input type="radio" name="Position" id="Senior Medical Officer" value="Senior Medical Officer"  required> Senior Medical Officer<br></br>
	<input type="radio" name="Position" id="Junior Medical Officer" value="Junior Medical Officer"  required> Junior Medical Officer<br></br>
	<input type="radio" name="Position" id="Nursing Officer" value="Nursing Officer"  required> Nursing Officer<br></br>
	<input type="radio" name="Position" id="Admin" value="Admin"  required> Admin<br></br>
	<input type="radio" name="Position" id="Other" value="Other"  required> Other<br></br>
	
	user Name 
	<input type="text" name ="uid" required><br><br>
	
	Password
	<input type="password" name="pwd" id="pwd1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br></br>
	
	Re-enter password
	<input type="password" name="pwdre" id="pwd2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br></br>
	
	Accept terms & conditions <input type="checkbox"id="checkboxReg" onclick="enableSubmitbutton()"><br><br>

	
	<input type="submit" class="button" name ="submit" value="submit"><br>
	</form>
	<script>	
	function checkStaffMemPassword()
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
function enableSubmitbutton(){
    if(document.getElementById("checkboxReg").checked){
        document.getElementById("submit").disabled=false;
    }
    else{
        document.getElementById("submit").disabled=true;
    }
    
}</script>
	<div>
			<footer>
			
			<div class="row">
			<div class="col">

			</div>
			<div class="col">
			<h3>Office</h3>
			<p>No.3385/3</p>
			<p>Highlevel Road,Maharagama,Colombo-03</p>
			<p class="email">hmshospitals@gmail.com</p>
			<p>+94 077-4567538</p>
			<p>+94 011-2896758</p>
			</div>
			<div class="col">
			<h3>Links</h3>
			<ul>
					<li><a href="AdminHomepage.jsp">AdminHome</a></li>
					<li><a href="Staff.jsp">Staff</a></li>
				
			</ul>
			</div>
			<div class="col1">
			<h3>Social Media</h3>

		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-whatsapp"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-youtube"></a>
		
			</div>
			</div>
			<hr>
			<p class="copyright">Group Orphan © 2023 - All Rights Reserved</p>
		</footer>
		</div>
</body>
</html>