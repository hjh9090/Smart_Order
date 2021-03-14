package com.soldesk.order.shopping;

public class Goods {

	private int num;	
	private String picture;	
	private String name;	
	private int price;
	private int quan;
	
	public Goods() {
		// TODO Auto-generated constructor stub
	}

	public Goods(int num, String picture, String name, int price, int quan) {
		super();
		this.num = num;
		this.picture = picture;
		this.name = name;
		this.price = price;
		this.quan = quan;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuan() {
		return quan;
	}

	public void setQuan(int quan) {
		this.quan = quan;
	}
	
	

}
