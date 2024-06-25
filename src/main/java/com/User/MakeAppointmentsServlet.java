
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


	@WebServlet("/MakeAppointmentsServlet")
	public class MakeAppointmentsServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			PrintWriter out =response.getWriter();
			response.setContentType("text/html");
			
			String UID=request.getParameter("uid");
			String Fname=request.getParameter("fname");
			String Lname=request.getParameter("lname");
			String Gen=request.getParameter("gen");
			String NIC=request.getParameter("nic");
			String Phone=request.getParameter("pn");
			String Email=request.getParameter("email");
			String Address=request.getParameter("address");
			String Doctor=request.getParameter("dname");
			String DOA=request.getParameter("doa");
			
			boolean IsTrue;
			IsTrue = UserDButil.insertAppointment(UID,Fname, Lname,Gen, NIC,Phone,Email,Address,Doctor,DOA);
			
			int ID=Integer.parseInt(UID);
			if (IsTrue==true) {
				List<Appointment> AppontmentDetails = UserDButil.getAppointmentDetails(ID);
				request.setAttribute("AppontmentDetails", AppontmentDetails);
				RequestDispatcher dis=request.getRequestDispatcher("MyAppointments.jsp");
				dis.forward(request, response);
			}
			else{
				RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
				out.println("<script type='text/javascript'>");
				out.println("alert('INCORRECT details');");
				out.println("</script>");
			}
			 
		}

	}
