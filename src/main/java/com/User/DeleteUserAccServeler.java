package com.User;
//IT22569486
//S.M.J.B.Samarakoon
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteUserAccServeler")
public class DeleteUserAccServeler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		
		boolean isTrue;
		
		isTrue =UserDButil.deleteUserAcc(id);
		
		if(isTrue==true) {
		   
		    RequestDispatcher dis=request.getRequestDispatcher("LogOut.jsp");
			dis.forward(request, response);
		}
		else
		{
			
			List<User> UserDetails = UserDButil.getUserDetails(id);
			request.setAttribute("UserDetails", UserDetails);
			
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
