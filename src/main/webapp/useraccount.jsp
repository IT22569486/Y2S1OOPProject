<!-- IT22569486
S.M.J.B.Samarakoon -->
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
<title>My Profile</title>
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
<h6> ${SessionUname} </h6>

	<fieldset>
	<c:forEach var="us" items="${UserDetails}">
		<c:set var="id" value="${us.getUserID()}"/>
		<c:set var="fname" value="${us.getFname()}"/>
		<c:set var="lname" value="${us.getLname()}"/>
		<c:set var="nic" value="${us.getNIC()}"/>
		<c:set var="mobile" value="${us.getPhone()}"/>
		<c:set var="dob" value="${us.getDOB()}"/>
		<c:set var="email" value="${us.getEmail()}"/>
		<c:set var="address" value="${us.getAddress()}"/>
		<c:set var="uname" value="${us.getUsername()}"/>
		<c:set var="password" value="${us.getPassword()}"/>
		<center><h1>My Profile</h1></center>
		
		User ID : ${us.getUserID()}<br><br>
		Name : ${us.getFname()} ${us.getLname()}<br><br>
		NIC : ${us.getNIC()}<br><br>
		Mobile No : ${us.getPhone()}<br><br>
		Date of birth : ${us.getDOB()}<br><br>
		E-mail : ${us.getEmail()}<br><br>
		Address : ${us.getAddress()}<br><br>
		UserName : ${us.getUsername()}<br><br>

		</c:forEach>
		
		<c:url value="Updateuser.jsp" var="usupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="dob" value="${dob}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="uname" value="${uname}"/>
		<c:param name="password" value="${password}"/>
		</c:url>
		
		<a href="${usupdate}">
		<input type="button" class="button" name="update" value="Update my data"/>   
		</a>&nbsp;
		
		<c:url value="DeleteUserAccount.jsp" var="usDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="dob" value="${dob}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="uname" value="${uname}"/>
		<c:param name="password" value="${password}"/>
		</c:url>
		<a href="${usDelete}">
		<input type="button" class="button" name="delete" value="Delete my Acc"/>
		</a>
		
		</fieldset>
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