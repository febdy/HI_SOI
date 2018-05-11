package com.bit.hi.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.CsDao;
import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;

@Repository
public class CsDaoImpl implements CsDao {

	private static final String namespace="com.bit.hi.CsMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CsVo> selectList(int startRnum, int endRnum, String kwd) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectPage", mapCri); //입력값 없이 출력만 하는 select
	}
	
	@Override
	public int selectTotalCount(String kwd) {
		return sqlSession.selectOne(namespace+"totalCount", kwd);
	}
	
	@Override
	public int insertNoticeWrite(CsVo csVo) {
		return sqlSession.insert(namespace+"insertNoticeWrite", csVo);
	}
	
	@Override
	public CsVo selectEachNotice(int notiNo) {
		return sqlSession.selectOne(namespace+"selectEachNotice", notiNo);
	}
	
	@Override
	public int updateHitEachNotice(int notiNo) {
		return sqlSession.update(namespace+"updateHitEachNotice", notiNo);
	}
	
	@Override
	public CsVo selectNoticeForModify(int notiNo) {
		return sqlSession.selectOne(namespace+"selectNoticeForModify", notiNo);
	}
	
	@Override
	public int updateEachNotice(CsVo csVo) {
		return sqlSession.update(namespace+"updateEachNotice", csVo);
	}
	
	@Override
	public int deleteNotice(int notiNo) {
		return sqlSession.delete(namespace+"deleteNotice", notiNo);
	}
	
	@Override
	public void qnaWrite(QnaVo qnaVo) {
		int result = sqlSession.insert(namespace+"writeByTitleContent", qnaVo);
		System.out.println(result + "########### 글쓰기 성공");
	}

	@Override
	public int qnaTotalCount(String searchValue) {
		int count = sqlSession.selectOne(namespace+"qnaTotalCount",searchValue);
		return count;
	}
	
	@Override
	public List<QnaVo> selectQnaList(int startRnum, int endRnum, String searchValue) {
		Map<String, Object> qamap = new HashMap<String, Object>();
		qamap.put("startRnum", startRnum);
		qamap.put("endRnum", endRnum);
		qamap.put("searchValue", searchValue);
		System.out.println("daoQNA" + qamap.toString());
		List<QnaVo> qnaList =  sqlSession.selectList(namespace+"qnaSelectList", qamap);
		
		return qnaList;
	}

	@Override
	public int updateHitEachQna(int qna_no) {
		return sqlSession.update(namespace+"updateHitEachQna", qna_no);		
	}

	@Override
	public QnaVo selectEachQna(int qna_no) {
		System.out.println(qna_no);
		return sqlSession.selectOne(namespace+"selectEachQna", qna_no);
	}

	@Override
	public QnaVo selectQnaForModify(int qna_no) {
		return sqlSession.selectOne(namespace+"selectQnaForModify", qna_no);
	}

	@Override
	public int updateEachQna(QnaVo qnaVo) {
		return sqlSession.update(namespace+"updateEachQna", qnaVo);
	}

	@Override
	public void deleteQna(int qna_no) {
		sqlSession.delete(namespace+"deleteEachQna", qna_no);		

	}
}
