<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>HMS Make an Appointment</title>
</head>
<body>
<h6> ${SessionUname} </h6>
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
					<li><a href="Homepage.jsp">Home</a></li>
					<li><a href="AboutUS.jsp">About Us</a></li>
					<li><a href="ContactUs.jsp">Contact Us</a></li>
					<li><a href="MyAppointments.jsp">My Appointments</a></li>
					<li><a href="useraccount.jsp">My Profiles</a></li>
					
					
					<li><a href="Login.jsp"><button class="btn1">Login</button></a></li>
					<li><a href="LogOut.jsp"><button class="btn2">log out</button></a></li>
				
				</ul>
		</div>
		</div>
	</nav>
		<br><br/><br><br/><br><br/><br><br/>
		
		<c:forEach var="us" items="${UserDetails}">
		<c:set var="id" value="${us.getUserID()}"/>
		</c:forEach>

	<form action="app" class="form1" method="post" onsubmit="return checkPasswordReg()">
		
		<center> <h3>Make Appointment for channel a Doctor</h2> </center>
		
		
	User ID<br></br>
	<input type="text" name="uid" placeholder="User ID" value="${id}"readonly><br></br>
	First Name<br></br>
	<input type="text" name="fname" placeholder="First Name" required><br></br>
	
	Last Name<br></br>
	<input type="text" name="lname" placeholder="Last Name" required><br></br>
	
	Gender<br></br>
	Male <input type="radio" name="gen" id="m" value="Male"  required><br></br>
	Female <input type="radio" name="gen" id="f" value="Female"  required><br></br>

	
	NIC<br></br>
	<input type="text" name="nic" placeholder="xxxxxxxxxxxx"  required><br></br>

	Mobile Number<br></br>
	<input type="phone" name="pn" placeholder="phoneNo" pattern= "[0-9]{10}" required><br></br>
	
	E-mail Address<br></br>
	<input type="email" name="email" placeholder="abc@gmail.com" required><br></br>
	
	Address<br></br>
	<textarea name="address" rows="4" cols="50" required></textarea><br></br>
	
	Doctor<br></br>
	<input type="text" name="dname" placeholder="Doctor's Name" required><br></br>
	
	Date for appointment<br></br>
	<input type="date" name="doa" required><br><br>

	
	Accept terms & conditions <input type="checkbox" id="checkboxReg" onclick="enableSubmitReg()"><br><br>

	
	<input type="submit" class="button" name ="submit" value="submit"><br>
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
					<li><a href="Homepage.jsp">Home</a></li>
					<li><a href="AboutUS.jsp">About Us</a></li>
					<li><a href="ContactUs.jsp">Contact Us</a></li>
					<li><a href="MyAppointments.jsp">My Appointments</a></li>
					<li><a href="useraccount.jsp">My Profiles</a></li>
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