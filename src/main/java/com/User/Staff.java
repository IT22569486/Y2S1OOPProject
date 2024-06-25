package com.User;

public class Staff {
	private int UserID;
	 private String Fname;
	 private String Lname;
	 private String NIC;
	 private String Phone;
	 private String Email;
	 private String Address;
	 private String DOB;
	 private String Postion;
	 private String Username;
	 private String Password;
	 
	 public Staff(int userID, String fname, String lname, String nIC, String phone, String email, String address,
				String dOB, String postion, String username, String password) {
		
			UserID = userID;
			Fname = fname;
			Lname = lname;
			NIC = nIC;
			Phone = phone;
			Email = email;
			Address = address;
			DOB = dOB;
			Postion = postion;
			Username = username;
			Password = password;
		}

	public int getUserID() {
		return UserID;
	}

	

	public String getFname() {
		return Fname;
	}

	

	public String getLname() {
		return Lname;
	}

	

	public String getNIC() {
		return NIC;
	}

	

	public String getPhone() {
		return Phone;
	}

	
	public String getEmail() {
		return Email;
	}

	

	public String getAddress() {
		return Address;
	}

	

	public String getDOB() {
		return DOB;
	}

	
	public String getPostion() {
		return Postion;
	}

	
	public String getUsername() {
		return Username;
	}

	

	public String getPassword() {
		return Password;
	}

	
}
