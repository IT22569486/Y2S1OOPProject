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


@WebServlet("/ForgetpasswordServlet")
public class ForgetpasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String nic =request.getParameter("nic");
		String uname =request.getParameter("uid");
		String password =request.getParameter("pwdre");
		
		
		boolean isTrue;
		
		isTrue =UserDButil.ResetPasword(nic,uname,password);
		
		
	
		if(isTrue==true) {
		   
		    RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);

		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Your user nAME OR PASSORD IS INCORRECT');");
			out.println("</script>");
		}
	}

}
