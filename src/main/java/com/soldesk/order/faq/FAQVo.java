package com.soldesk.order.faq;

public class FAQVo {

	private int num;
	private String id;
	private String content;
	private String picture;
	
	public FAQVo() {
		// TODO Auto-generated constructor stub
	}

	public FAQVo(int num, String id, String content, String picture) {
		super();
		this.num = num;
		this.id = id;
		this.content = content;
		this.picture = picture;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	

}
