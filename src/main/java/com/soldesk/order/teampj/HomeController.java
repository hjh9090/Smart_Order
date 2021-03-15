package com.soldesk.order.teampj;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping(value = "map.go", method = RequestMethod.GET)
	public String home1(HttpServletRequest req, HttpSession session) {
		session.removeAttribute("name");
		session.removeAttribute("price");
		session.removeAttribute("res_name");
		return "index";
	}

	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public String menu(HttpServletRequest req) {
		
		d.getAllMenus(req);
		return "menu/menulist";
	}
	
	@RequestMapping(value = "HomeController", method = RequestMethod.GET)
	public String hc(String name ,HttpServletRequest req,HttpSession session) {
		
		System.out.println("직접 주는 놈 "+name);
		String name2 = req.getParameter("name");
		System.out.println("리퀘스트로 주는 놈 " + name2);
		
		session.setAttribute("gage", name);
		
		
		return "";
	}
	
	
	
}
