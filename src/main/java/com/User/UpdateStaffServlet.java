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


@WebServlet("/UpdateStaffServlet")
public class UpdateStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		String id =request.getParameter("id");
		String fname =request.getParameter("fname");
		String lname =request.getParameter("lname");
		String nic =request.getParameter("nic");
		String mobile =request.getParameter("pn");
		String email =request.getParameter("email");
		String address =request.getParameter("address");
		String dob =request.getParameter("dob");
		String Pos =request.getParameter("Pos");
		String uname =request.getParameter("uid");
		String password =request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue =UserDButil.updateStaff(id,fname,lname,nic,mobile,email,address,dob,Pos,uname,password);
		
		
	
		if(isTrue==true) {
			
			List<Staff> StaffDetails = UserDButil.getStaff();
		    request.setAttribute("StaffDetails", StaffDetails);
		   
		    RequestDispatcher dis=request.getRequestDispatcher("Staff.jsp");
			dis.forward(request, response);
		}
		else
		{
			List<Staff> StaffDetails = UserDButil.getStaff();
			request.setAttribute("StaffDetails", StaffDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("Staff.jsp");
			dis.forward(request, response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Not updated try again');");
			out.println("</script>");
		}}

}
