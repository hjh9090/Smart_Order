package com.soldesk.order.menu;

import java.util.List;

public interface MapperMenu {

	public List<Menu_Vo> getAllMenus();
	public int regMenu(Menu_Vo mn);
	public int updatePriceByNumber(UpdateP updp);
	public int deleteMenu(Menu_Vo mn);

	
	
}
