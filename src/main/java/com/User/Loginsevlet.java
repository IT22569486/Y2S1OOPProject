//IT22569486
//S.M.J.B.Samarakoon
package com.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/Loginsevlet")
public class Loginsevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String username=request.getParameter("uid");
		String password=request.getParameter("pwd");
		
		
		boolean isTrue;
		boolean isTrue2;
		boolean isTrue3;
		
		isTrue=UserDButil.Validate(username,password);
		isTrue2=UserDButil.ValidateAdmin(username,password);
		isTrue3=UserDButil.ValidateDoctor(username,password);;
		if(isTrue==true) {

						HttpSession session =request.getSession(true);
						session.putValue("SessionUname", username);


				
			try {
				List<User> UserDetails = UserDButil.getUser(username,password);
				session.setAttribute("UserDetails", UserDetails);
				
				Connection con=DBConnect.getConnection();
				Statement stat=con.createStatement();
				
				String sql2="select * from HMSUsers where username='"+username+"'";
				ResultSet rs=stat.executeQuery(sql2);
			
				while(rs.next()) {

				int id=rs.getInt(1);

				List<Appointment> AppontmentDetails = UserDButil.getAppointmentDetails(id);
				session.setAttribute("AppontmentDetails", AppontmentDetails);
				
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
	}
		else if(isTrue2==true) {

		HttpSession session =request.getSession(true);
		session.putValue("SessionUname", username);
		session.putValue("Sessionpw", password);


		try {
			List<Staff> StaffDetails = UserDButil.getStaff();
			session.setAttribute("StaffDetails", StaffDetails);

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dis=request.getRequestDispatcher("AdminHomepage.jsp");
		dis.forward(request, response);
		
	}
		else if(isTrue3==true) {

			HttpSession session =request.getSession(true);
			session.putValue("SessionUname", username);
			session.putValue("Sessionpw", password);


			try {
				List<Staff> StaffDetails = UserDButil.getStaff();
				session.setAttribute("StaffDetails", StaffDetails);
				

			}
			catch(Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher dis=request.getRequestDispatcher("DoctorHomePage.jsp");
			dis.forward(request, response);
		}
	else {
		
		out.println("<script type='text/javascript'>");
		out.println("alert('Your user nAME OR PASSORD IS INCORRECT');");
		out.println("location='Login.jsp'");
		out.println("</script>");
		
	}
		
	}		

}
