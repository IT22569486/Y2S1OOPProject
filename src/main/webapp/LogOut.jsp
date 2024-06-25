<!-- IT22569486
S.M.J.B.Samarakoon -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h6> ${SessionUname} </h6>
<%
	session.removeAttribute("SessionUname");
	session.invalidate();
	response.sendRedirect("Login.jsp");
%>
</body>
</html>