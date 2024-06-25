<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Delete Account</title>
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
					<li><a href="DoctorHomePage.jsp">DoctorHomepage</a></li>
					<li><a href="DApointments.jsp">Appointments</a></li>
					<li><a href="medicalrecords.jsp">Medical Records</a></li>
					
					<li><a href="Login.jsp"><button class="btn1">Login</button></a></li>
					<li><a href="LogOut.jsp"><button class="btn2">log out</button></a></li>
				
				</ul>
		</div>
		</div>
	</nav>
		<br><br/><br><br/><br><br/><br><br/>
	<% 
	String id =request.getParameter("id");
	String fname =request.getParameter("fname");
	String lname =request.getParameter("lname");
	String nic =request.getParameter("nic");
	String mobile =request.getParameter("mobile");
	String email =request.getParameter("email");
	String address =request.getParameter("address");
	String dob =request.getParameter("dob");
	String Pos =request.getParameter("pos");
	String uname =request.getParameter("uname");
	String password =request.getParameter("password");
	%>
<h1>User Account Delete</h1>

<form action="STDelete" class="form1" method="post">
ID <br></br>
<input type="text" name ="id" value="<%=id%>" readonly><br>
		First Name<br></br>
<input type="text" name="fname" value="<%=fname%>" readonly><br></br>

Last Name<br></br>
<input type="text" name="lname" value="<%=lname%>" readonly><br></br>
NIC<br></br>
<input type="text" name="nic" value="<%=nic%>"  readonly><br></br>

Mobile Number<br></br>
<input type=phone name="pn" value="<%=mobile%>" pattern= "[0-9]{10}" readonly><br></br>

E-mail Address<br></br>
<input type="email" name="email" value="<%=email%>" readonly><br></br>

Address<br></br>
<textarea name="address"  rows="4" cols="50" readonly><%=address%></textarea><br></br>

DOB<br></br>
<input type="date"  name="dob" value="<%=dob%>"readonly><br><br>

Position<br></br>
<input type="text" name="pos" value="<%=Pos%>"  readonly><br></br>
	
user Name 
<input type="text" name ="uid" value="<%=uname%>"readonly><br><br>

Password
<input type="password" name="pwd" id="pwd1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" value="<%=password%>"readonly><br></br>

	<input type="submit" class="button" name ="submit" value="Delete"><br>


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
					<li><a href="DoctorHomePage.jsp">DoctorHomepage</a></li>
					<li><a href="DApointments.jsp">Appointments</a></li>
					<li><a href="medicalrecords.jsp">Medical Records</a></li>
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