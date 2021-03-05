package com.soldesk.order.menu;

import java.math.BigDecimal;
import java.util.function.BiFunction;

public class UpdateP {

	private String udmn;
	private BigDecimal udprice;
	private BigDecimal m_num;
	
	public UpdateP() {
		// TODO Auto-generated constructor stub
	}

	public UpdateP(String udmn, BigDecimal udprice, BigDecimal m_num) {
		super();
		this.udmn = udmn;
		this.udprice = udprice;
		this.m_num = m_num;
	}

	public String getUdmn() {
		return udmn;
	}

	public void setUdmn(String udmn) {
		this.udmn = udmn;
	}

	public BigDecimal getUdprice() {
		return udprice;
	}

	public void setUdprice(BigDecimal udprice) {
		this.udprice = udprice;
	}

	public BigDecimal getM_num() {
		return m_num;
	}

	public void setM_num(BigDecimal m_num) {
		this.m_num = m_num;
	}

	
	
	
	
}
