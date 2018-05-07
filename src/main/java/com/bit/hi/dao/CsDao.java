package com.bit.hi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;

@Repository
public class CsDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<CsVo> selectList(int startRnum, int endRnum, String kwd) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("cs.selectPage", mapCri); //입력값 없이 출력만 하는 select
	}
	
	public int selectTotalCount(String kwd) {
		return sqlSession.selectOne("cs.totalCount", kwd);
	}
	
	public int insertNoticeWrite(CsVo csVo) {
		return sqlSession.insert("cs.insertNoticeWrite", csVo);
	}
	
	public CsVo selectEachNotice(int notiNo) {
		return sqlSession.selectOne("cs.selectEachNotice", notiNo);
	}
	
	public int updateHitEachNotice(int notiNo) {
		return sqlSession.update("cs.updateHitEachNotice", notiNo);
	}
	
	public CsVo selectNoticeForModify(int notiNo) {
		return sqlSession.selectOne("cs.selectNoticeForModify", notiNo);
	}
	
	public int updateEachNotice(CsVo csVo) {
		return sqlSession.update("cs.updateEachNotice", csVo);
	}

	public void qnaWrite(QnaVo qnaVo) {
		int result = sqlSession.insert("cs.writeByTitleContent", qnaVo);
		System.out.println(result + "########### 글쓰기 성공");
	}

	public int qnaTotalCount(String searchValue) {
		int count = sqlSession.selectOne("cs.qnaTotalCount",searchValue);
		return count;
	}
	
	public List<QnaVo> qnaGetList(){
		List<QnaVo> qnaList = sqlSession.selectList("cs.qnaGetList");
		return qnaList;
	}
	
	public List<QnaVo> selectQnaList(int startRnum, int endRnum, String searchValue) {
		Map<String, Object> qamap = new HashMap<String, Object>();
		qamap.put("startRnum", startRnum);
		qamap.put("endRnum", endRnum);
		qamap.put("searchValue", searchValue);
		System.out.println("daoQNA" + qamap.toString());
		List<QnaVo> qnaList =  sqlSession.selectList("cs.qnaselectList", qamap);
		
		return qnaList;
	}

	public int updateHitEachQna(int qna_no) {
		return sqlSession.update("cs.updateHitEachQna", qna_no);		
	}

	public QnaVo selectEachQna(int qna_no) {
		System.out.println(qna_no);
		return sqlSession.selectOne("cs.selectEachQna", qna_no);
	}

	public QnaVo selectQnaForModify(int qna_no) {
		return sqlSession.selectOne("cs.selectQnaForModify", qna_no);
	}

	public int updateEachQna(QnaVo qnaVo) {
		return sqlSession.update("cs.updateEachQna", qnaVo);
	}

	public void deleteQna(int qna_no) {
		sqlSession.delete("cs.deleteEachQna", qna_no);		
	}
}
