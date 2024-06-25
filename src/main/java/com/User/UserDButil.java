//IT22569486
//S.M.J.B.Samarakoon
package com.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.User.DBConnect;
import com.User.Medical;

import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//begin IT22569486 part
public class UserDButil {
	private static boolean isSucces=false;
	private static Connection con =null;
	private static Statement stat =null;
	private static ResultSet rs =null;
	
	public static boolean Validate(String UserName,String Password){
		try {
			
			con=DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from hmsusers where username='"+UserName+"' and password='"+Password+"'";
			rs=stat.executeQuery(sql);
			
			if(rs.next()) {
				
				isSucces=true;
				
			}else {
				isSucces=false;
			}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return isSucces;
	}
	public static boolean ResetPasword(String nic,String uname,String password)  {
		boolean isSucces=false;

		try {
			con=DBConnect.getConnection();
			stat=con.createStatement();
			String	sql2="update HMSUsers set  password='"+password+"' where username='"+uname+"' and nic='"+nic+"' ";
			
			int rs=stat.executeUpdate(sql2);
			
			if(rs>0) {
				isSucces=true;
				
				
			}else {
				isSucces=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSucces;

	}
	public static boolean ValidateDoctor(String UserName,String Password){
		try {
		
			con=DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from hmsstaff where username='"+UserName+"' and password='"+Password+"' and position='Senior Medical Officer'";
			rs=stat.executeQuery(sql);
			
			if(rs.next()) {
				
				isSucces=true;
				
			}else {
				isSucces=false;
			}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return isSucces;
	}
	public static boolean ValidateAdmin(String UserName,String Password){
		try {
		
			con=DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from hmsstaff where username='"+UserName+"' and password='"+Password+"'and position='Admin'";
			rs=stat.executeQuery(sql);
			
			if(rs.next()) {
				
				isSucces=true;
				
			}else {
				isSucces=false;
			}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return isSucces;
	}
		
		public static List<User> getUser(String UserName,String Password){
			
			ArrayList<User> Us=new ArrayList<>();
		
		try {
	
			con=DBConnect.getConnection();
			stat=con.createStatement();
			
			
			String sql="select * from hmsusers where username='"+UserName+"' and password='"+Password+"'";
			
			rs=stat.executeQuery(sql);
			while(rs.next()) {
				int id=rs.getInt(1);
				String Fname=rs.getString(2);
				String Lname=rs.getString(3);
				String NIC=rs.getString(4);
				String Phone=rs.getString(5);
				String DOB=rs.getString(6);
				String Email=rs.getString(7);
				String Address=rs.getString(8);
				String Username=rs.getString(9);
				String Pwd=rs.getString(10);
				
				User u=new User(id,Fname,Lname,NIC,Phone,DOB,Email,Address,Username,Pwd);
				Us.add(u);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return Us;
	}
	
		
	
	public static boolean insertUser(String fname,String lname,String nic,String mobile,String dob,String email,String address,String uid,String pwd) {
		
		boolean isSuccess=false;
			
			try {
				con=DBConnect.getConnection();
				stat=con.createStatement();
				
				String sql="insert into hmsusers values(0,'"+fname+"','"+lname+"','"+nic+"','"+mobile+"','"+dob+"','"+email+"','"+address+"','"+uid+"','"+pwd+"')";
				int rs=stat.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess=true;
				}
				else {
					isSuccess=false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
	}
	
	public static boolean updateUser(String id,String fname,String lname,String nic,String mobile,String dob,String email,String address,String uid,String pwd)  {
		boolean isSucces=false;
		int CusID=Integer.parseInt(id);
		try {
			con=DBConnect.getConnection();
			stat=con.createStatement();
			String	sql2="update hmsusers set firstname='"+fname+"' , lastname='"+lname+"'  , nic='"+nic+"' , mobile='"+mobile+"' ,dob='"+dob+"', email='"+email+"' , address='"+address+"' , username='"+uid+"' , password='"+pwd+"' where userid='"+CusID+"' ";
	
		
			int rs=stat.executeUpdate(sql2);
			
			if(rs>0) {
				isSucces=true;
				
				
			}else {
				isSucces=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSucces;
	}
	
	public static List<User> getUserDetails(String ID){
		
		int CusID=Integer.parseInt(ID);
		ArrayList<User>  Us=new ArrayList<>();
		
		try {
			
			con=DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from hmsusers where userid='"+CusID+"'";
			
			rs=stat.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String Fname=rs.getString(2);
				String Lname=rs.getString(3);
				String NIC=rs.getString(4);
				String Phone=rs.getString(5);
				String DOB=rs.getString(6);
				String Email=rs.getString(7);
				String Address=rs.getString(8);
				String Username=rs.getString(9);
				String Pwd=rs.getString(10);
				
				User u=new User(id,Fname,Lname,NIC,Phone,DOB,Email,Address,Username,Pwd);
				
				Us.add(u);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Us;
	}
	
	public static boolean deleteUserAcc(String id) {
		boolean isSuccess=false;
		
		int UID=Integer.parseInt(id);
		
		try {
		
			con=DBConnect.getConnection();
			stat=con.createStatement();
		
			String sql="delete from hmsusers where userid='"+UID+"'";
		
			int rs=stat.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	///Finished IT22569486 part
	
	
	
	//Begin IT22563828 part
	//appointment
	
	

	
public static boolean insertAppointment(String uid,String fname,String lname,String gen ,String nic,String mobile,String Email,String Address,String Doctor,String DOA) {
		
		boolean isSuccess=false;
			
			try {
				con=DBConnect.getConnection();
				stat=con.createStatement();
				int CusID=Integer.parseInt(uid);
				
				String sql1="insert into hmsappointmnet values ( 0 , '"+CusID+"' , '"+fname+"' , '"+lname+"' , '"+gen+"' , '"+nic+"' , '"+mobile+"' , '"+Email+"' , '"+Address+"' , '"+Doctor+"' , '"+DOA+"')";
				
				
				    
				    int rs = stat.executeUpdate(sql1);
				    
				    if (rs > 0) {
				        isSuccess = true;
				    }
				    else {
						isSuccess=false;
					}
			
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
	}

public static List<Appointment> getAppointmentDetails(int UserID){
	
	
	ArrayList<Appointment>  Us=new ArrayList<>();
	
	try {
		
		con=DBConnect.getConnection();
		stat=con.createStatement();

		String sql="select * from hmsappointmnet where userid='"+UserID+"'";
		rs=stat.executeQuery(sql);

		while(rs.next()) {
			int id=rs.getInt(1);
			int UID=rs.getInt(2);
			String Fname=rs.getString(3);
			String Lname=rs.getString(4);
			String Gen=rs.getString(5);
			String NIC=rs.getString(6);
			String Phone=rs.getString(7);
			String Email=rs.getString(8);
			String Address=rs.getString(9);
			String Doctor=rs.getString(10);
			String DOA=rs.getString(11);

			Appointment u=new Appointment(id,UID,Fname,Lname,Gen,NIC,Phone,Email,Address,Doctor,DOA);
			
			Us.add(u);
			
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return Us;
}

public static boolean updateAppointment(String id,String uid,String fname,String lname,String gen,String nic,String mobile,String email,String address,String doctor,String doa)  {
	boolean isSucces=false;
	int CusID=Integer.parseInt(id);
	try {
		con=DBConnect.getConnection();
		stat=con.createStatement();
		String	sql2="update hmsappointmnet set firstname='"+fname+"' , lastname='"+lname+"'  ,gen ='"+gen+"' ,nic='"+nic+"' , mobile='"+mobile+"' , email='"+email+"' , address='"+address+"' , doctor='"+doctor+"' , doa='"+doa+"' where apointmentid='"+CusID+"' ";

	
		int rs=stat.executeUpdate(sql2);
		
		if(rs>0) {
			isSucces=true;
			
			
		}else {
			isSucces=false;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return isSucces;
}
public static boolean deleteAppointment(String aid) {
	boolean isSuccess=false;
	
	int ID=Integer.parseInt(aid);
	
	try {
	
		con=DBConnect.getConnection();
		stat=con.createStatement();
	
		String sql="delete from hmsappointmnet where apointmentid='"+ID+"'";
	
		int rs=stat.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}else {
			isSuccess=false;
		}
	}catch(Exception e){
		
		e.printStackTrace();
	}
	
	
	return isSuccess;
}

//Finished IT22563828 first part there is another part at bottom.

//Begin IT22579904 part
/*Staff*/


public static boolean insertStaff(String fname,String lname,String nic,String mobile,String email,String address,String dob,String position,String uid,String pwd) {
	
	boolean isSuccess=false;
		
		try {
			con=DBConnect.getConnection();
			stat=con.createStatement();
			
			String sql="insert into hmsstaff values(0,'"+fname+"','"+lname+"','"+nic+"','"+mobile+"','"+email+"','"+address+"','"+dob+"','"+position+"','"+uid+"','"+pwd+"')";
			int rs=stat.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
}
public static List<Staff> getStaff(){
	
	
	ArrayList<Staff>  Staf=new ArrayList<>();
	
	try {
		
		con=DBConnect.getConnection();
		stat=con.createStatement();

		String sql="select * from hmsstaff";
		rs=stat.executeQuery(sql);

		while(rs.next()) {
			int id=rs.getInt(1);
		String Fname=rs.getString(2);
		String Lname=rs.getString(3);
		String NIC=rs.getString(4);
		String Phone=rs.getString(5);
		String Email=rs.getString(6);
		String Address=rs.getString(7);
		String DOB=rs.getString(8);
		String Posi=rs.getString(9);
		String Username=rs.getString(10);
		String Pwd=rs.getString(11);
		
		Staff st=new Staff(id,Fname,Lname,NIC,Phone,Email,Address,DOB,Posi,Username,Pwd);

			Staf.add(st);
			
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return Staf;
}

public static boolean updateStaff(String id,String fname,String lname,String nic,String mobile,String email,String address,String dob,
		String Pos,String uname,String password)  {
	boolean isSucces=false;
	int STID=Integer.parseInt(id);
	try {
		con=DBConnect.getConnection();
		stat=con.createStatement();
		String	sql2="update hmsstaff set firstname='"+fname+"' , lastname='"+lname+"'  , nic='"+nic+"' , mobile='"+mobile+"', email='"+email+"' , address='"+address+"' ,dob='"+dob+"', position='"+Pos+"'  , username='"+uname+"' , password='"+password+"' where userid='"+STID+"' ";
		
		int rs=stat.executeUpdate(sql2);
		
		if(rs>0) {
			isSucces=true;
			
			
		}else {
			isSucces=false;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return isSucces;

}
public static boolean deleteStaff(String sid) {
	boolean isSuccess=false;
	
	int ID=Integer.parseInt(sid);
	
	try {
	
		con=DBConnect.getConnection();
		stat=con.createStatement();
	
		String sql="delete from hmsstaff where userid='"+ID+"'";
	
		int rs=stat.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}else {
			isSuccess=false;
		}
	}catch(Exception e){
		
		e.printStackTrace();
	}
	
	
	return isSuccess;
}

//finished IT22579904 part


//bEgin another part of IT22563828

/*Medical*/


public static boolean medicalinsert( String patient_id, String date_recorded, String diagnosis,String treatment_plan,String vital_signs)  {
	  
	  boolean isSuccess=false;
	   
	   try {
		  
		   con = DBConnect.getConnection();
		   stat = con.createStatement();
	   String sql="insert into hospital.medical values(0,'"+patient_id+"','"+date_recorded+"','"+diagnosis+"','"+ treatment_plan+"','"+vital_signs+"' )";
	   int rs = stat.executeUpdate(sql);
	   
	   
	   if(rs>0) {
		   isSuccess=true;
	   }else {
		   isSuccess=false; 
	   }
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	  return isSuccess;
}
public static List<Medical> getMedicalDetails(String patient_id) {
	
	ArrayList<Medical> medical = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stat = con.createStatement();
		String sql = "select * from medical where patient_id='"+patient_id+"'";
		rs = stat.executeQuery(sql);
		
		while(rs.next()) {
			int record_id = rs.getInt(1);
			String patientid = rs.getString(2);
			String date_recorded = rs.getString(3);
			String diagnosis = rs.getString(4);
			String treatment_plan = rs.getString(5);
			String vital_signs= rs.getString(6);
			
			Medical medi = new Medical(record_id,patientid,date_recorded,diagnosis,treatment_plan,vital_signs);
			medical.add(medi);

		}
		
	} catch (Exception e) {
		
	}
	
	return medical;	
}
public static boolean updaterecords(String record_id,String patient_id,String date_recorded,String diagnosis,String treatment_plan,String vital_signs) {
	
	boolean isSuccess = false;
	
	try {
		con = DBConnect.getConnection();
		stat= con.createStatement();
		String sql = "update hospital.medical set  patient_id='"+patient_id+"',dateRecorded='"+date_recorded+"',diagnosis='"+diagnosis+"',treatmentPlan='"+treatment_plan+"',vitalSigns='"+vital_signs+"'"+"where recordID='"+record_id+"'";
	
		int rs = stat.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	
}

public static boolean deleterecords(String record_id) {
	int convrecord_id = Integer.parseInt(record_id);
	boolean isSuccess = false;

	try {
		con = DBConnect.getConnection();
		stat= con.createStatement();
		String sql = "delete from hospital.medical where recordID = '"+convrecord_id+"'";
	
		int rs = stat.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	
}

}
