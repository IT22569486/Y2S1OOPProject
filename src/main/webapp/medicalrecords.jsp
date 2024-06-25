<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="HMSH.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>DOctor Page</title>

</head>
<body>

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
		
		
		<a href="medicalinsert.jsp">
		<input type="button" class ='button'name="delete" value="Make new Medical Report"/>
		</a>
		
	

  <c:forEach var="medi" items="${mediDetails}">
  <fieldset>	
  <table>
   
     <c:set var="record_id" value="${medi.record_id}"/>
     <c:set var="patient_id" value="${medi.patient_id}"/> 
     <c:set var="date_recorded" value="${medi.date_recorded}"/>
     <c:set var="diagnosis" value="${medi.diagnosis}"/>
     <c:set var="treatment_plan" value="${medi.treatment_plan}"/>
     <c:set var="vital_signs" value="${medi.vital_signs}"/>
     
  <tr>
   <Center><td> Medical Record ID </td> 
    <td>${medi.record_id}</td></Center>
  
  </tr>
  <tr>
    <td>Patient ID</td>
    <td>${medi.patient_id}</td>
  </tr>
  <tr>
    <td>Date Recorded</td>
    <td> ${medi.date_recorded}</td>
  </tr>
   <tr>
    <td> Diagnosis </td>
    <td>${medi.diagnosis}</td>
  </tr> 
   <tr>
    <td>Treatment Plan</td>
    <td>${medi.treatment_plan}</td>
  </tr> 
  <tr>
    <td>Vital Signs</td>
    <td>${medi.vital_signs}</td>
  </tr>
   
     

</table>

<c:url value="updaterecords.jsp" var="mediupdate">
  <c:param  name="record_id" value="${record_id}"/>
  <c:param  name="patient_id" value="${patient_id}"/>
  <c:param  name="date_recorded" value="${date_recorded}"/>
  <c:param  name="diagnosis" value="${diagnosis}"/>
  <c:param  name="treatment_plan" value="${treatment_plan}"/>
  <c:param  name="vital_signs" value="${vital_signs}"/>
  
</c:url>
<a href="${mediupdate}">
  <input type="button"class="button" name="update" value="Update Medical Record">
</a> &nbsp;

<c:url value="deleterecords.jsp" var="medidelete">
  <c:param  name="record_id" value="${record_id}"/>
  <c:param  name="patient_id" value="${patient_id}"/>
  <c:param  name="date_recorded" value="${date_recorded}"/>
  <c:param  name="diagnosis" value="${diagnosis}"/>
  <c:param  name="treatment_plan" value="${treatment_plan}"/>
  <c:param  name="vital_signs" value="${vital_signs}"/>
  
</c:url>
<a href="${medidelete}">
  <input type="button" class="button" name="delete" value="delete Medical Record">
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