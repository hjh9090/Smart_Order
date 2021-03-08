package com.soldesk.order.teampj;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soldesk.order.menu.Menu_Vo;
import com.soldesk.order.menu.UpdateP;

@Controller
public class MenuController {


	@Autowired
	private DAO d;
	
	
	@RequestMapping(value = "regMenu.go", method = RequestMethod.GET)
	public String reg() {	
	

		return "regmenu";
	}


	@RequestMapping(value = "regMenu.do", method = RequestMethod.POST)
	public String regmn(Menu_Vo mn, HttpServletRequest req) {
		
		d.regMenu(mn,req);
		d.getAllMenus(req);
		
		return "menulist";
		
	}

	@RequestMapping(value = "updatemenu.go", method = RequestMethod.GET)
	public String update() {	
		
		return "updatemenu";
	}
	
	
	@RequestMapping(value = "updatemenu.do", method = RequestMethod.GET)
	public String updatemn(UpdateP updp, HttpServletRequest req) {
		
		
		d.updateMenu(updp,req);
		d.getAllMenus(req);
		
		return "menulist";
		
	}
	
	@RequestMapping(value = "delete.do", method = RequestMethod.GET)
	public String del(Menu_Vo mn, HttpServletRequest req) {
		
		d.deleteMenu(mn,req);
		d.getAllMenus(req);
		
		return "menulist";
		
	}
	
	
	

	
}
