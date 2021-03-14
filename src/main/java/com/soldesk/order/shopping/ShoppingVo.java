package com.soldesk.order.shopping;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;

@Service
public class ShoppingVo {

	private BigDecimal s_num;
	private String s_picture;
	private String s_name;
	private BigDecimal s_price;
	private BigDecimal s_quan;

	public ShoppingVo() {
		// TODO Auto-generated constructor stub
	}

	public ShoppingVo(BigDecimal s_num, String s_picture, String s_name, BigDecimal s_price, BigDecimal s_quan) {
		super();
		this.s_num = s_num;
		this.s_picture = s_picture;
		this.s_name = s_name;
		this.s_price = s_price;
		this.s_quan = s_quan;
	}

	public BigDecimal getS_num() {
		return s_num;
	}

	public void setS_num(BigDecimal s_num) {
		this.s_num = s_num;
	}

	public String getS_picture() {
		return s_picture;
	}

	public void setS_picture(String s_picture) {
		this.s_picture = s_picture;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public BigDecimal getS_price() {
		return s_price;
	}

	public void setS_price(BigDecimal s_price) {
		this.s_price = s_price;
	}

	public BigDecimal getS_quan() {
		return s_quan;
	}

	public void setS_quan(BigDecimal s_quan) {
		this.s_quan = s_quan;
	}

}
