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


@WebServlet("/UserInsert")
public class UserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		
		String Fname=request.getParameter("fname");
		String Lname=request.getParameter("lname");
		String Email=request.getParameter("email");
		String NIC=request.getParameter("nic");
		String Phone=request.getParameter("pn");
		String DOB=request.getParameter("dob");
		String Address=request.getParameter("address");
		String Username=request.getParameter("uid");
		String Password=request.getParameter("pwdre");
		
		
		
		
		
		
		boolean IsTrue;
		IsTrue = UserDButil.insertUser(Fname, Lname, NIC,Phone,DOB, Email,Address,Username,Password);
		if (IsTrue==true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Success!');");
			out.println("</script>");
			List<User> UserDetails = UserDButil.getUser(Username,Password);
			request.setAttribute("UserDetails", UserDetails);
			RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Success!');");
			out.println("</script>");
		}
		else{
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		 
	}

}
