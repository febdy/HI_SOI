package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;
import com.bit.hi.util.PageCriteria;

public interface CsDao {
	public List<CsVo> selectList(int startRnum, int endRnum, String kwd) throws Exception;
	
	public int selectTotalCount(PageCriteria pCri, String kwd) throws Exception;
	
	public int insertNoticeWrite(CsVo csVo) throws Exception;
	
	public CsVo selectEachNotice(int notiNo) throws Exception;
	
	public int updateHitEachNotice(int notiNo) throws Exception;
	
	public CsVo selectNoticeForModify(int notiNo) throws Exception;
	
	public int updateEachNotice(CsVo csVo) throws Exception;
	
	public int deleteNotice(int notiNo) throws Exception;
	
	public List<QnaVo> selectQnaList(int startRnum, int endRnum, String kwd) throws Exception;
	
	public void qnaWrite(QnaVo qnaVo) throws Exception;

	public int qnaTotalCount(PageCriteria pCri, String kwd) throws Exception;

	public int updateHitEachQna(int qnaNo) throws Exception;

	public QnaVo selectEachQna(int qnaNo) throws Exception;

	public QnaVo selectQnaForModify(int qnaNo) throws Exception;

	public int updateEachQna(QnaVo qnaVo) throws Exception;

	public void deleteQna(int qnaNo) throws Exception;
}
