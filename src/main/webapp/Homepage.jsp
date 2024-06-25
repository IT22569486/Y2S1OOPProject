<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>HMS HOME Page</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
  <%@include file="component/navbar.jsp"%>
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
			<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p> Stringent safety measures and protocols in place to ensure the well-being of patients, 
									staff, and visitors,including compliance with 
									all healthcare safety regulations and guidelines.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>We are dedicated to advancing healthcare through ongoing medical research initiatives. 
								Our hospital actively engages in research projects, clinical trials, and collaborations 
								with leading healthcare institutions to stay at the forefront of medical knowledge and 
								offer cutting-edge treatments and therapies to our patients.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Our hospital is known for its team of friendly and compassionate doctors 
								who prioritize patient comfort and well-being. 
								They foster strong doctor-patient relationships, provide personalized care, 
								and take the time to listen to patients' concerns and questions.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Emergency Services</p>
								<p>24/7 emergency care for critical conditions, and urgent medical needs.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Our hospital is known for its team of friendly and compassionate doctors 
								who prioritize patient comfort and well-being. 
								They foster strong doctor-patient relationships, provide personalized care, 
								and take the time to listen to patients' concerns and questions.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			

		</div>
	</div>
		
		
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