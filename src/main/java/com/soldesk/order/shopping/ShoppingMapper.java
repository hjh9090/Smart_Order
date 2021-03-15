package com.soldesk.order.shopping;

import java.util.List;

public interface ShoppingMapper {
	
	
	public List<ShoppingVo> getAllList (ShoppingVo vo);
	
	public int insertShopping (ShoppingVo vo);
	
	public int deleteMenu (ShoppingVo vo);
	

}
