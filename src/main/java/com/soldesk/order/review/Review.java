package com.soldesk.order.review;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;

@Service
public class Review {

	private BigDecimal r_num;
	private String r_id;
	private String r_content;
	private String r_picture;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(BigDecimal r_num, String r_id, String r_content, String r_picture) {
		super();
		this.r_num = r_num;
		this.r_id = r_id;
		this.r_content = r_content;
		this.r_picture = r_picture;
	}

	public BigDecimal getR_num() {
		return r_num;
	}

	public void setR_num(BigDecimal r_num) {
		this.r_num = r_num;
	}

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getR_picture() {
		return r_picture;
	}

	public void setR_picture(String r_picture) {
		this.r_picture = r_picture;
	}
	
	
	
	
	
	
	
}
