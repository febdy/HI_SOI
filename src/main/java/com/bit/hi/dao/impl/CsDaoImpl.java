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
import com.bit.hi.util.PageCriteria;

@Repository
public class CsDaoImpl implements CsDao {

	private static final String namespace="com.bit.hi.CsMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CsVo> selectList(int startRnum, int endRnum, String kwd) throws Exception {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectList", mapCri); //입력값 없이 출력만 하는 select
	}
	
	@Override
	public int selectTotalCount(String kwd) throws Exception {
		return sqlSession.selectOne(namespace+"totalCount", kwd);
	}
	
	@Override
	public int insertNoticeWrite(CsVo csVo) throws Exception {
		return sqlSession.insert(namespace+"insertNoticeWrite", csVo);
	}
	
	@Override
	public CsVo selectEachNotice(int notiNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectEachNotice", notiNo);
	}
	
	@Override
	public int updateHitEachNotice(int notiNo) throws Exception {
		return sqlSession.update(namespace+"updateHitEachNotice", notiNo);
	}
	
	@Override
	public CsVo selectNoticeForModify(int notiNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectNoticeForModify", notiNo);
	}
	
	@Override
	public int updateEachNotice(CsVo csVo) throws Exception {
		return sqlSession.update(namespace+"updateEachNotice", csVo);
	}
	
	@Override
	public int deleteNotice(int notiNo) throws Exception {
		return sqlSession.delete(namespace+"deleteNotice", notiNo);
	}
	
	@Override
	public List<QnaVo> selectQnaList(int startRnum, int endRnum, String kwd) throws Exception {
		Map<String, Object> mapCri = new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		System.out.println("daoQNA" + mapCri.toString());
		return sqlSession.selectList(namespace+"qnaSelectList", mapCri);
	}
	
	@Override
	public void qnaWrite(QnaVo qnaVo) throws Exception {
		sqlSession.insert(namespace+"writeByTitleContent", qnaVo);
	}

	@Override
	public int qnaTotalCount(PageCriteria pCri, String kwd) throws Exception {
		int count = sqlSession.selectOne(namespace+"qnaTotalCount", kwd);
		return count;
	}

	@Override
	public int updateHitEachQna(int qnaNo) throws Exception {
		return sqlSession.update(namespace+"updateHitEachQna", qnaNo);		
	}

	@Override
	public QnaVo selectEachQna(int qnaNo) throws Exception{
		System.out.println(qnaNo);
		return sqlSession.selectOne(namespace+"selectEachQna", qnaNo);
	}

	@Override
	public QnaVo selectQnaForModify(int qnaNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectQnaForModify", qnaNo);
	}

	@Override
	public int updateEachQna(QnaVo qnaVo) throws Exception {
		return sqlSession.update(namespace+"updateEachQna", qnaVo);
	}

	@Override
	public void deleteQna(int qna_no) throws Exception {
		sqlSession.delete(namespace+"deleteEachQna", qna_no);		

	}
}
