package com.User;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAppointmentServlet")
public class DeleteAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String AID =request.getParameter("aid");
		String UID=request.getParameter("uid");
		
		
		int uID=Integer.parseInt(UID);
		boolean isTrue;
		
		isTrue =UserDButil.deleteAppointment(AID);
		
		if(isTrue==true) {
			List<Appointment> AppontmentDetails = UserDButil.getAppointmentDetails(uID);
		    request.setAttribute("AppontmentDetails", AppontmentDetails);
		    RequestDispatcher dis=request.getRequestDispatcher("MyAppointments.jsp");
			dis.forward(request, response);
		}
		else
		{
			List<Appointment> AppontmentDetails = UserDButil.getAppointmentDetails(uID);
		    request.setAttribute("AppontmentDetails", AppontmentDetails);
			RequestDispatcher dis=request.getRequestDispatcher("MyAppointments.jsp");
			dis.forward(request, response);
		}
		
	}
}


