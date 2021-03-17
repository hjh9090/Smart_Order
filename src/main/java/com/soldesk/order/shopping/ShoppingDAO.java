package com.soldesk.order.shopping;

import java.math.BigDecimal;
import java.util.List;
import java.util.function.BiConsumer;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ShoppingDAO {
	
	@Autowired
	private SqlSession gs;

	public void shopping(HttpServletRequest req, ShoppingVo sv) {
		
		try {

			String s_picture = req.getParameter("s_picture");
			String s_name = req.getParameter("s_name");
			String s_price = req.getParameter("s_price");
			String s_quan = req.getParameter("s_quan");

			sv.setS_picture(s_picture);
			sv.setS_name(s_name);
			sv.setS_price(new BigDecimal(s_price));
			sv.setS_quan(new BigDecimal(s_quan));

			if (gs.getMapper(ShoppingMapper.class).insertShopping(sv) == 1) {
				System.out.println("성공");
				req.setAttribute("r", "등록성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<ShoppingVo> getlist(HttpServletRequest req, ShoppingVo sv) {
		
		List<ShoppingVo> list = gs.getMapper(ShoppingMapper.class).getAllList(sv);
		
		req.setAttribute("shopping", gs.getMapper(ShoppingMapper.class).getAllList(sv));
		
		return list;
	}
	
	public void deleteMenu (HttpServletRequest req, ShoppingVo vo) {
		
		String s_num = req.getParameter("num");
		try {
			vo.setS_num(new BigDecimal(s_num));
			
			if(gs.getMapper(ShoppingMapper.class).deleteMenu(vo) == 1) {
				System.out.println("삭제 완료");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void allDel (ShoppingVo vo) {
		
		gs.getMapper(ShoppingMapper.class).allDel(vo); 
			System.out.println("주문이 완료 됨");
		
	}

}
