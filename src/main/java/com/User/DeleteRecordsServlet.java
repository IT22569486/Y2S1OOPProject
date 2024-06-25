package com.User;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteRecordsServlet")
public class DeleteRecordsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		     
		String id = request.getParameter("record_id");
		
		boolean isTrue;
		
		
		isTrue = UserDButil.deleterecords(id);
		
		if(isTrue==true) {
			
			List<Medical> mediDetails = UserDButil.getMedicalDetails(id);
			request.setAttribute("mediDetails", mediDetails);
			RequestDispatcher dis = request.getRequestDispatcher("medicalinsert.jsp");
			dis.forward(request, response);
		}
		else {
			List<Medical> mediDetails = UserDButil.getMedicalDetails(id);
			request.setAttribute("mediDetails", mediDetails);
			RequestDispatcher dis2 = request.getRequestDispatcher("medicalrecords.jsp");
			dis2.forward(request, response);
		}
	}

}
