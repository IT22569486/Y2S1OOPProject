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


@WebServlet("/DeleteStaffServlet")
public class DeleteStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String id=request.getParameter("id");
		
		boolean isTrue;
		
		isTrue =UserDButil.deleteStaff(id);
		
		if(isTrue==true) {
		   
			List<Staff> StaffDetails = UserDButil.getStaff();
			request.setAttribute("StaffDetails", StaffDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("Staff.jsp");
			dis.forward(request, response);
		}
		
		else
		{
			
			List<User> UserDetails = UserDButil.getUserDetails(id);
			request.setAttribute("UserDetails", UserDetails);
			
			
			RequestDispatcher dis=request.getRequestDispatcher("Staff.jsp");
			dis.forward(request, response);
		}
	}

}
