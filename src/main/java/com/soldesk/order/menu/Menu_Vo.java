package com.soldesk.order.menu;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;

@Service
public class Menu_Vo {

private BigDecimal m_num;
private String m_picture;
private String m_name;
private BigDecimal m_price;
private BigDecimal m_quan;
private BigDecimal m_category;

public Menu_Vo() {
	// TODO Auto-generated constructor stub
}

public Menu_Vo(BigDecimal m_num, String m_picture, String m_name, BigDecimal m_price, BigDecimal m_quan,
		BigDecimal m_category) {
	super();
	this.m_num = m_num;
	this.m_picture = m_picture;
	this.m_name = m_name;
	this.m_price = m_price;
	this.m_quan = m_quan;
	this.m_category = m_category;
}

public BigDecimal getM_num() {
	return m_num;
}

public void setM_num(BigDecimal m_num) {
	this.m_num = m_num;
}

public String getM_picture() {
	return m_picture;
}

public void setM_picture(String m_picture) {
	this.m_picture = m_picture;
}

public String getM_name() {
	return m_name;
}

public void setM_name(String m_name) {
	this.m_name = m_name;
}

public BigDecimal getM_price() {
	return m_price;
}

public void setM_price(BigDecimal m_price) {
	this.m_price = m_price;
}

public BigDecimal getM_quan() {
	return m_quan;
}

public void setM_quan(BigDecimal m_quan) {
	this.m_quan = m_quan;
}

public BigDecimal getM_category() {
	return m_category;
}

public void setM_category(BigDecimal m_category) {
	this.m_category = m_category;
}

	
	
	
	
}
