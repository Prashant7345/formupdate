package net.codejava.entity;

import java.sql.Date;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
public class User {
	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long uID;
//	@NotEmpty
	private String name;
//	@NotEmpty
	private String lastname;
	@NotBlank
	@Email
	private String email;
	private Date birthday;
	private int mobno;
//	@NotEmpty
	private String address;
//	@NotEmpty
	private String state;
//	@NotEmpty
	private String city;
	private int pincode;
	private int standard;
	private String[] subjects;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getMobno() {
		return mobno;
	}
	public void setMobno(int mobno) {
		this.mobno = mobno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public int getStandard() {
		return standard;
	}
	public void setStandard(int standard) {
		this.standard = standard;
	}
	public String[] getSubjects() {
		return subjects;
	}
	public void setSubjects(String[] subjects) {
		this.subjects = subjects;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", lastname=" + lastname + ", email=" + email + ", birthday=" + birthday
				+ ", mobno=" + mobno + ", address=" + address + ", state=" + state + ", city=" + city + ", pincode="
				+ pincode + ", standard=" + standard + ", subjects=" + Arrays.toString(subjects) + "]";
	}
	
}
