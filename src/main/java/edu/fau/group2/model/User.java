package edu.fau.group2.model;

import java.util.Date;
/*
This class creates team objects
Declaring variables
*/	
public class User {

	private int userId;        //Stores user id
	private String firstName;   //Stores user first name 
	private String lastName;   //Stores user last name
	private String email;      //Stores user email
	private String userName;   //Stores username
	private String password;  //Stores user password
	private String phone;     //Stores user phone number
	private Date dob;       //Stores user date of birth
	private String gender;   //Stores user gender
	
	//Default Constructor
	public User() {
		super();
	}

	//Overloaded Constructor
	public User(String firstName, String lastName, String email, String userName, String password,
			String phone, Date dob, String gender, int userId) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.dob = dob;
		this.gender = gender;
		this.userId = userId;
	}
	
	public User(String firstName, String lastName, String email, String userName, String password,
			String phone, Date dob, String gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.dob = dob;
		this.gender = gender;
	}

	//Gets user id
	public int getUserId() {
		return userId;
	}

	//Sets user id
	public void setUserId(int userId) {
		this.userId = userId;
	}

	//Gets user first name 
	public String getFirstName() {
		return firstName;
	}

	//Sets user last name
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	//Gets user last name
	public String getLastName() {
		return lastName;
	}

	//Sets user last name
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	//Gets user email
	public String getEmail() {
		return email;
	}

	//Sets user email
	public void setEmail(String email) {
		this.email = email;
	}

	//Gets username
	public String getUserName() {
		return userName;
	}

	//Sets username
	public void setUserName(String userName) {
		this.userName = userName;
	}

	//Gets user password
	public String getPassword() {
		return password;
	}

	//Sets user password
	public void setPassword(String password) {
		this.password = password;
	}

	//Gets user phone number
	public String getPhone() {
		return phone;
	}

	//Sets user phone number
	public void setPhone(String phone) {
		this.phone = phone;
	}

	//Gets user date of birth
	public Date getDob() {
		return dob;
	}

	//Sets user date of birth
	public void setDob(Date dob) {
		this.dob = dob;
	}

	//Gets user gender
	public String getGender() {
		return gender;
	}

	//Sets user gender
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}//End user class
