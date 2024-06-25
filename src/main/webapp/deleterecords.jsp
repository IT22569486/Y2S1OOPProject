<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>DOctor Page</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
<%
	if (session.getAttribute("SessionUname")==null){
		response.sendRedirect("Login.jsp");
	}
%>
  <%@include file="component/navbar.jsp"%>
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
          String record_id = request.getParameter("record_id");
          String patient_id= request.getParameter("patient_id");
          String date_recorded= request.getParameter("date_recorded");
          String diagnosis = request.getParameter("diagnosis");
          String treatment_plan = request.getParameter("treatment_plan");
          String vital_signs = request.getParameter("vital_signs");
     %>

   	
	<form action="deletet" class="form1" method="post">
	<table>
		<tr>
			<td>Record ID</td>
			<td><input type="text" name="record_id" value="<%= record_id %>" readonly ></td>
		</tr>
		<tr>
			<td>Patient ID</td>
			<td><input type="text" name="patient_id" value="<%= patient_id %>"readonly></td>
		</tr>
		<tr>
		<td>Date Recorded</td>
		<td><input type="text" name="data_recorded" value="<%= date_recorded %>" readonly></td>
	</tr>
	<tr>
		<td>Diagnosis</td>
		<td><input type="text" name="diagnosis" value="<%= diagnosis %>" readonly></td>
	</tr>
	<tr>
		<td>Treatment Plan</td>
		<td><input type="text" name="treatment_plan" value="<%= treatment_plan %>" readonly></td>
	</tr>
	<tr>
		<td>Vital Signs</td>
		<td><input type="text" name="vital_signs" value="<%= vital_signs %>" readonly></td>
	</tr>		
	</table>
	<br> 
	<input type="submit" name="submit" value="Delete Medical Records">
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