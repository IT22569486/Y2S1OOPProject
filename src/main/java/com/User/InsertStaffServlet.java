package com.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertStaffServlet")
public class InsertStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		
		String Fname=request.getParameter("fname");
		String Lname=request.getParameter("lname");
		String Email=request.getParameter("email");
		String NIC=request.getParameter("nic");
		String Phone=request.getParameter("pn");
		String DOB=request.getParameter("dob");
		String Possistion=request.getParameter("Position");
		String Address=request.getParameter("address");
		String Username=request.getParameter("uid");
		String Password=request.getParameter("pwd");
		
		boolean IsTrue;
		IsTrue = UserDButil.insertStaff(Fname, Lname, NIC,Phone,Email,Address,DOB,Possistion,Username,Password);
		if (IsTrue==true) {
			List<Staff> StaffDetails = UserDButil.getStaff();
			request.setAttribute("StaffDetails", StaffDetails);
		    RequestDispatcher dis=request.getRequestDispatcher("Staff.jsp");
			dis.forward(request, response);
			
		}
		else{
			List<Staff> StaffDetails = UserDButil.getStaff();
			request.setAttribute("StaffDetails", StaffDetails);
			out.println("<script type='text/javascript'>");
			out.println("alert('UnSuccess');");
			out.println("</script>");
	}
		}

}
