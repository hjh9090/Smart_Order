package com.soldesk.order.login;

import org.springframework.stereotype.Service;

@Service
public class MemberVO {

	private String mem_id;
	private String mem_name;
	private String mem_gender;
	private String mem_email;
	private String mem_age;
	
	public MemberVO() {
		super();
	}

	public MemberVO(String mem_id, String mem_name, String mem_gender, String mem_email, String mem_age) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_gender = mem_gender;
		this.mem_email = mem_email;
		this.mem_age = mem_age;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_age() {
		return mem_age;
	}

	public void setMem_age(String mem_age) {
		this.mem_age = mem_age;
	}
	
	
	
}
