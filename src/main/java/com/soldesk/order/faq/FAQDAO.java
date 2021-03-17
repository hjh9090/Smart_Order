package com.soldesk.order.faq;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FAQDAO {

	@Autowired SqlSession sqlsession;
	
	
	public void insertFaq (HttpServletRequest request, FAQVo vo) {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		vo.setFaq_f(title);
		vo.setFaq_q(content);
		
		if(sqlsession.getMapper(FAQMapper.class).insertFaq(vo) == 1) {
			System.out.println("성공");
			request.setAttribute("r", "등록완료");
		}
			
		
	}// end insert
	
	public void getAllList (HttpServletRequest request, FAQVo vo) {
		
		request.setAttribute("list", sqlsession.getMapper(FAQMapper.class).getAllList(vo));
		
	}
	
	
}
