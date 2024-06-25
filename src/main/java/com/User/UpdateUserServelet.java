//IT22569486
//S.M.J.B.Samarakoon
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


@WebServlet("/UpdateUserServelet")
public class UpdateUserServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String id=request.getParameter("id");
		String fname =request.getParameter("fname");
		String lname =request.getParameter("lname");
		String nic =request.getParameter("nic");
		String mobile =request.getParameter("pn");
		String dob =request.getParameter("dob");
		String email =request.getParameter("email");
		String address =request.getParameter("address");
		String uname =request.getParameter("uid");
		String password =request.getParameter("pwd");
		
		
		boolean isTrue;
		
		isTrue =UserDButil.updateUser(id,fname,lname,nic,mobile,dob,email,address,uname,password);
		
		
	
		if(isTrue==true) {
			
			List<User> UserDetails = UserDButil.getUserDetails(id);
		    request.setAttribute("UserDetails", UserDetails);
		   
		    RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Success');");
			out.println("</script>");
		}
		
		else
		{
			
			
			List<User> UserDetails = UserDButil.getUserDetails(id);
			request.setAttribute("UserDetails", UserDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Not updated try again');");
			out.println("</script>");
		}
	
	}

}
