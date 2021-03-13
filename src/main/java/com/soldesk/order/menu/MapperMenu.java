package com.soldesk.order.menu;

import java.util.List;

public interface MapperMenu {

	public List<Menu_Vo> getAllMenus();
	
	public int regMenu(Menu_Vo mn);
	
	public int updatePriceByNumber(UpdateP updp);
	
	public int deleteMenu(Menu_Vo mn);
	
	public List<Menu_Vo> getCategory(Menu_Vo mn);

	public List<Menu_Vo> showMenu(Menu_Vo mn);


	
	
}
