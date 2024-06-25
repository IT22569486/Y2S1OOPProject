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


@WebServlet("/UpdateAppointmentServlet")
public class UpdateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		
		String aid =request.getParameter("aid");
		String uid =request.getParameter("uid");
		String fname =request.getParameter("fname");
		String lname =request.getParameter("lname");
		String gen =request.getParameter("gen");
		String nic =request.getParameter("nic");
		String mobile =request.getParameter("pn");
		String email =request.getParameter("email");
		String address =request.getParameter("address");
		String doctor =request.getParameter("dname");
		String doa =request.getParameter("doa");
		

		
		
		boolean isTrue;
		
		isTrue =UserDButil.updateAppointment(aid,uid,fname,lname,gen,nic,mobile,email,address,doctor,doa);
		
		
		int uID=Integer.parseInt(uid);
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
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Not updated try again');");
			out.println("</script>");
		}
	}

}
