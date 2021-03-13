package com.soldesk.order.teampj;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soldesk.order.menu.Menu_Vo;
import com.soldesk.order.menu.UpdateP;

@Controller
public class MenuController {


	public static final Logger logger = LoggerFactory.getLogger(MenuController.class);
	
	@Autowired
	private DAO d;
	
	
	@RequestMapping(value = "regMenu.go", method = RequestMethod.GET)
	public String reg() {	
	

		return "menu/regmenu";
	}


	@RequestMapping(value = "regMenu.do", method = RequestMethod.POST)
	public String regmn(Menu_Vo mn, HttpServletRequest req) {
		
		d.regMenu(mn,req);
		d.getAllMenus(req);
		
		return "menu/menulist";
		
	}

	@RequestMapping(value = "updatemenu.go", method = RequestMethod.GET)
	public String update() {	
		
		return "menu/updatemenu";
	}
	
	
	@RequestMapping(value = "updatemenu.do", method = RequestMethod.GET)
	public String updatemn(UpdateP updp, HttpServletRequest req) {
		
		
		d.updateMenu(updp,req);
		d.getAllMenus(req);
		
		return "menu/menulist";
		
	}
	
	@RequestMapping(value = "delete.do", method = RequestMethod.GET)
	public String del(Menu_Vo mn, HttpServletRequest req) {
		
		d.deleteMenu(mn,req);
		d.getAllMenus(req);
		
		return "menu/menulist";
		
	}

	@RequestMapping(value = "getcategory.do", method = RequestMethod.GET)
	public String category(Menu_Vo mn, HttpServletRequest req) {
		logger.info("매뉴 조회 들어옴");
		
		d.getcategory(mn,req);
		//d.deleteMenu(mn,req);
		//d.getAllMenus(req);
		
		
		
		System.out.println("DAO실행 끝");
		return "menu/menulist";
		
	}
	
	@RequestMapping(value = "detail.go", method = RequestMethod.GET)
	public String detail(Menu_Vo mn, HttpServletRequest req) {
		
		
		d.getmenu(mn,req);
		
		
		return "menu/detailgo";
	}
	
	

	
}
