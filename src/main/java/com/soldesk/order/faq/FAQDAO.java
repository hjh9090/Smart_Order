//package com.soldesk.order.faq;
//
//public class FAQDAO {
//
//import java.util.List;
//
//import javax.annotation.Resource;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.stereotype.Repository;
//
//import com.spring.board.dto.BoardDto;
//import com.spring.board.form.BoardForm;
//
//@Repository
//public class FAQDao {
//
//	@Resource(name = "sqlSession")
//	private SqlSession sqlSession;
//
//	private static final String NAMESPACE = "com.spring.board.boardMapper";
//
//	public List<FAQVo> getBoardList(FAQForm boardForm) throws Exception {
//
//		return sqlSession.selectList(NAMESPACE + ".getBoardList");
//	}
//}}
