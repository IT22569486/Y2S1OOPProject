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
<title>Staff</title>
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
					<li><a href="AdminHomepage.jsp">AdminHome</a></li>
					<li><a href="Staff.jsp">Staff</a></li>
					
					<li><a href="Login.jsp"><button class="btn1">Login</button></a></li>
					<li><a href="LogOut.jsp"><button class="btn2">log out</button></a></li>
				
				</ul>
		</div>
		</div>
	</nav>
		<br><br/><br><br/><br><br/><br><br/>
<h6> ${SessionUname} </h6>


<a href="InsertStaff.jsp">
		<input type="button" class ='button'name="delete" value="Add new Staff member"/>
		</a>
	<fieldset class="st">
<table >
	<tr>
		<th>EmpID</th><th>First Name</th><th>Last Nmae</th><th>NIC</th><th>Mobile</th><th>Email</th><th>Address</th>
			<th>DOB</th><th>Position</th><th>Username</th><th>Update</th><th>Action</th>
	</tr>
	<c:forEach var="us" items="${StaffDetails}">
		<c:set var="id" value="${us.getUserID()}"/>
		<c:set var="fname" value="${us.getFname()}"/>
		<c:set var="lname" value="${us.getLname()}"/>
		<c:set var="nic" value="${us.getNIC()}"/>
		<c:set var="mobile" value="${us.getPhone()}"/>
		<c:set var="email" value="${us.getEmail()}"/>
		<c:set var="address" value="${us.getAddress()}"/>
		<c:set var="dob" value="${us.getDOB()}"/>
		<c:set var="pos" value="${us.getPostion()}"/>
		<c:set var="uname" value="${us.getUsername()}"/>
		<c:set var="password" value="${us.getPassword()}"/>
	<tr>
		<td>${us.getUserID()}</td>
		<td>${us.getFname()}</td>
		 <td>${us.getLname()}</td>
		<td>${us.getNIC()}</td>
		<td>${us.getPhone()}</td>
		<td>${us.getEmail()}</td>
		<td>${us.getAddress()}</td>
		<td>${us.getDOB()}</td>
		<td>${us.getPostion()}</td>
		<td>${us.getUsername()}</td>
		
		<td>
		<c:url value="UpdateStaffMemberDetails.jsp" var="STupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="dob" value="${dob}"/>
		<c:param name="pos" value="${pos}"/>
		<c:param name="uname" value="${uname}"/>
		<c:param name="password" value="${password}"/>
		</c:url>
		
		<a href="${STupdate}">
		<input type="button" class="button" name="update" value="Update"/>   
		</a>
		</td>
		<td>
		<c:url value="DeleteStaffMember.jsp" var="STDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="dob" value="${dob}"/>
		<c:param name="pos" value="${pos}"/>
		<c:param name="uname" value="${uname}"/>
		<c:param name="password" value="${password}"/>
		</c:url>
		<a href="${STDelete}">
		<input type="button" class="button" name="delete" value="Remove"/>
		</a>
		</td>
		</tr>
		</c:forEach>
			
		</table>
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