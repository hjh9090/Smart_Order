package com.soldesk.order.review;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.stereotype.Service;

@Service
public class Review {

	private int r_num;
	private String r_id;
	private String r_content;
	private String r_picture;
	private Date r_date;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(int r_num, String r_id, String r_content, String r_picture, Date r_date) {
		super();
		this.r_num = r_num;
		this.r_id = r_id;
		this.r_content = r_content;
		this.r_picture = r_picture;
		this.r_date = r_date;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
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

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	
	
	
	
	
}
