package com.student.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "StudentSMSMvcHibernate")
public class Student
{
	@Column(name = "Name")
	private String name;

	@Id
	@GeneratedValue
	@Column(name = "RollNo")
	private int rollNo;
	
	@Column(name = "Education")
	private String education;
	
	@Column(name = "Email")
	private String email;
	
	@Column(name = "Phone")
	private long phone;
	
	@Column(name="country")
	private String country;
	
	@Column(name="city")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	private String city;

	public int getRollNo() {
		return rollNo;
	}

	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Student [rollNo=" + rollNo + ", name=" + name + ", education=" + education + ", email=" + email
				+ ", phone=" + phone + "]";
	}

}
