package com.User;

public class Appointment {
	
	private int AppID;
	private int UID;
	private String Fname;
	private String Lname;
	private String Gen;
	private String NIC;
	private String Phone;
	private String Email;
	private String Address;
	private String Doctor;
	private String DOA;
	public Appointment(int appID, int uID, String fname, String lname, String gen, String nIC, String phone,
			String email, String address, String doctor, String dOA) {
		super();
		AppID = appID;
		UID = uID;
		Fname = fname;
		Lname = lname;
		Gen = gen;
		NIC = nIC;
		Phone = phone;
		Email = email;
		Address = address;
		Doctor = doctor;
		DOA = dOA;
	}
	public int getAppID() {
		return AppID;
	}

	public int getUID() {
		return UID;
	}

	public String getFname() {
		return Fname;
	}

	public String getLname() {
		return Lname;
	}

	public String getGen() {
		return Gen;
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

	public String getDoctor() {
		return Doctor;
	}

	public String getDOA() {
		return DOA;
	}
	
}
