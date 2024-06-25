<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>My Appointments</title>
</head>
<body>
<h6> ${SessionUname} </h6>

<%
	if (session.getAttribute("SessionUname")==null){
		response.sendRedirect("Login.jsp");
	}
%>
<div class="hero-image">
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

		<a href="MakeAppointment.jsp">
		<input type="button" class ='button'name="delete" value="Make new appointment"/>
		</a>
			
	<c:forEach var="cu" items="${AppontmentDetails}">
<fieldset>
		<c:set var="id" value="${cu.getAppID()}"/>
		<c:set var="uid" value="${cu.getUID()}"/>
		<c:set var="fname" value="${cu.getFname()}"/>
		<c:set var="lname" value="${cu.getLname()}"/>
		<c:set var="gen" value="${cu.getGen()}"/>
		<c:set var="nic" value="${cu.getNIC()}"/>
		<c:set var="mobile" value="${cu.getPhone()}"/>
		<c:set var="email" value="${cu.getEmail()}"/>
		<c:set var="add" value="${cu.getAddress()}"/>
		<c:set var="doc" value="${cu.getDoctor()}"/>
		<c:set var="doa" value="${cu.getDOA()}"/>
	
		<center>
			<h3>My Appointment</h3><br>
			<h4>Appointment No ${cu.getAppID()}</h4><br><br>
		</center>
		<div class="fsApp">
		User ID: ${cu.getUID()}<br><br>
		First Name: ${cu.getFname()}<br><br>
		Last Name : ${cu.getLname()}<br><br>
		Gender: ${cu.getGen()}<br><br>
		NIC: ${cu.getNIC()}<br><br>
		Mobile: ${cu.getPhone()}<br><br>
		E-mail: ${cu.getEmail()}<br><br>
		Address: ${cu.getAddress()}<br><br>
		Doctor Name: ${cu.getDoctor()}<br><br>
		Appointment Date:${cu.getDOA()}<br><br>
</div>
		<c:url value="UpdateAppointment.jsp" var="apupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="uid" value="${uid}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="gen" value="${gen}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="address" value="${add}"/>
		<c:param name="doc" value="${doc}"/>
		<c:param name="doa" value="${doa}"/>
		</c:url>
		<a href="${apupdate}">
		<input type ="button" class="button" name="update" value="Edit"/>
		</a>&nbsp;
		
		<c:url value="DeleteAppointment.jsp" var="apDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="uid" value="${uid}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="gen" value="${gen}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="address" value="${add}"/>
		<c:param name="doc" value="${doc}"/>
		<c:param name="doa" value="${doa}"/>
		</c:url>
		<a href="${apDelete}">
		<input type="button" class ='button' name="delete" value="Delete"/>
		</a>
		</fieldset>

		</c:forEach>
		
		
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
	
	

</div>		
</body>
 </html>