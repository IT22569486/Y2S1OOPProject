package com.User;
//IT22569486
//S.M.J.B.Samarakoon
public class User {
	private int UserID;
	 private String Fname;
	 private String Lname;
	 private String Email;
	 private String NIC;
	 private String Phone;
	 private String DOB;
	 private String Address;
	 private String Username;
	 private String Password;
	public User(int userID, String fname, String lname ,String nIC, String phone, String dOB, String email,
			String address, String username, String password) {
		super();
		UserID = userID;
		Fname = fname;
		Lname = lname;
		Email = email;
		NIC = nIC;
		Phone = phone;
		DOB = dOB;
		Address = address;
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
	
	public String getDOB() {
		return DOB;
	}
	public String getEmail() {
		return Email;
	}
	public String getAddress() {
		return Address;
	}
	public String getUsername() {
		return Username;
	}
	public String getPassword() {
		return Password;
	}
	

	
	
	

}

