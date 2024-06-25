package com.User;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MedicalInsertServlet")
public class MedicalInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
	         String patient_id= request.getParameter("patient_id");
	         String date_recorded= request.getParameter("date_recorded");
	         String diagnosis = request.getParameter("diagnosis");
	         String treatment_plan = request.getParameter("treatment_plan");
	         String vital_signs = request.getParameter("vital_signs");
	         
	         
	        boolean isTrue = UserDButil.medicalinsert(patient_id,date_recorded,diagnosis,treatment_plan,vital_signs);

	    
	        		if(isTrue == true) {
	        			
	        			List<Medical> mediDetails = UserDButil.getMedicalDetails(patient_id);
	        			request.setAttribute("mediDetails", mediDetails);
	        			
	        			RequestDispatcher dis = request.getRequestDispatcher("medicalrecords.jsp");
	        			dis.forward(request, response);
	        		}
	        		else {

	        			List<Medical> mediDetails = UserDButil.getMedicalDetails(patient_id);
	        			request.setAttribute("mediDetails", mediDetails);
	        			RequestDispatcher dis2 = request.getRequestDispatcher("medicalrecords.jsp");
	        			dis2.forward(request, response);
	        		} 
	         
	         
	         
	         
	}

}
