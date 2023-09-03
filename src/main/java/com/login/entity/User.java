package com.login.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String email;
	private String name;
	private String password;	
	private String dob;
	private String gender;
	
	public User(int id, String email, String name, String password, String dob, String gender) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.password = password;
		this.dob = dob;
		this.gender = gender;
	}

	public User() {
		super();
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", name=" + name + ", password=" + password + ", dob=" + dob
				+ ", gender=" + gender + "]";
	}

	public void setGender(String gender) {
		this.gender = gender;
	}	
	
	
	

}
