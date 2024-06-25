package com.User;

import java.util.List;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateRecordsServlet")
public class UpdateRecordsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
		 String record_id = request.getParameter("record_id");
         String patient_id= request.getParameter("patient_id");
         String date_recorded= request.getParameter("date_recorded");
         String diagnosis = request.getParameter("diagnosis");
         String treatment_plan = request.getParameter("treatment_plan");
         String vital_signs = request.getParameter("vital_signs");
		
	

	boolean isTrue; 
	
	isTrue = UserDButil.updaterecords(record_id,patient_id , date_recorded, diagnosis, treatment_plan, vital_signs);
	
	if(isTrue == true) {
		
		List<Medical> mediDetails = UserDButil.getMedicalDetails(patient_id);
		request.setAttribute("mediDetails", mediDetails);
		RequestDispatcher dis = request.getRequestDispatcher("medicalrecords.jsp");
		dis.forward(request, response);
	}
	else {
		
		List<Medical> mediDetails = UserDButil.getMedicalDetails(patient_id);
		request.setAttribute("mediDetails", mediDetails);
		RequestDispatcher dis1 = request.getRequestDispatcher("medicalrecords.jsp");
		dis1.forward(request, response);
	}
	}
}
