package com.soldesk.order.teampj;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@Autowired
	private DAO d;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		return "index";
	}

	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public String menu(HttpServletRequest req) {
		
		d.getAllMenus(req);
		return "menulist";
	}
	
}
