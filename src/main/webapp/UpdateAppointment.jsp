<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Update Appointment</title>
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
	<% 
		String aid =request.getParameter("id");
		String uid =request.getParameter("uid");
		String fname =request.getParameter("fname");
		String lname =request.getParameter("lname");
		String gen =request.getParameter("gen");
		String nic =request.getParameter("nic");
		String mobile =request.getParameter("mobile");
		String email =request.getParameter("email");
		String address =request.getParameter("address");
		String doctor =request.getParameter("doc");
		String doa =request.getParameter("doa");
	%>
	<form action="updateapp" class="form1" method="post">
		
		<center> <h3>Update Appointment for channel a Doctor</h3> </center>
		
	Appointment ID<br></br>
	<input type="text" name="aid" value="<%=aid%>" placeholder="User ID" readonly><br></br>
		
	User ID<br></br>
	<input type="text" name="uid" value="<%=uid%>" placeholder="User ID" readonly><br></br>
	First Name<br></br>
	<input type="text" name="fname" value="<%=fname%>" placeholder="First Name" required><br></br>
	
	Last Name<br></br>
	<input type="text" name="lname" value="<%=lname%>" placeholder="Last Name" required><br></br>
	
	Gender<br></br>
	<input type="text" name="gen" value="<%=gen%>" placeholder="Gender" required><br></br>
	
	NIC<br></br>
	<input type="text" name="nic" value="<%=nic%>" placeholder="xxxxxxxxxxxx"  required><br></br>

	Mobile Number<br></br>
	<input type="phone" name="pn" value="<%=mobile%>" placeholder="phoneNo" pattern= "[0-9]{10}" required><br></br>
	
	E-mail Address<br></br>
	<input type="email" name="email" value="<%=email%>" placeholder="abc@gmail.com" required><br></br>
	
	Address<br></br>
	<textarea name="address" rows="4" cols="50" ><%=address%></textarea><br></br>
	
	Doctor<br></br>
	<input type="text" name="dname" value="<%=doctor%>"placeholder="Doctor's Name" required><br></br>
	
	Date for appointment<br></br>
	<input type="date" name="doa" value="<%=doa%>"><br><br>

	
	Accept terms & conditions <input type="checkbox" id="checkboxReg"><br><br>

	
	<input type="submit" class="button" name ="submit" value="submit"><br>
	</form>
	
	

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