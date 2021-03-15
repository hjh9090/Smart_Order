package com.soldesk.order.login;

public class GoogleVO {

	
	private String goo_id;
	private String goo_name;
	private String email;
	
	public GoogleVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public GoogleVO(String goo_id, String goo_name, String email) {
		super();
		this.goo_id = goo_id;
		this.goo_name = goo_name;
		this.email = email;
	}
	public String getGoo_id() {
		return goo_id;
	}
	public void setGoo_id(String goo_id) {
		this.goo_id = goo_id;
	}
	public String getGoo_name() {
		return goo_name;
	}
	public void setGoo_name(String goo_name) {
		this.goo_name = goo_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
