package com.soldesk.order.login;

import org.springframework.stereotype.Service;

@Service
public class MemberVO {

	private String id;
	private String name;
	private String gender;
	private String email;
	private int age;
	
	public MemberVO() {
		super();
	}
	public MemberVO(String id, String name, String gender, String email, int age) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.age = age;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	
}
