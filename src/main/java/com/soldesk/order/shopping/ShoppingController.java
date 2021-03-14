 package com.soldesk.order.shopping;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class ShoppingController {

	@Autowired
	private ShoppingDAO d;

	@RequestMapping(value = "shoping.go", method = RequestMethod.GET)
	public String shopping(HttpServletRequest req, ShoppingVo sv) {
		d.shopping(req, sv);
		d.getlist(req, sv);
		return "shopping/shopping";
	}
}
