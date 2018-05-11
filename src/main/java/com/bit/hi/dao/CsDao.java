package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;

public interface CsDao {
	public List<CsVo> selectList(int startRnum, int endRnum, String kwd);
	
	public int selectTotalCount(String kwd);
	
	public int insertNoticeWrite(CsVo csVo);
	
	public CsVo selectEachNotice(int notiNo);
	
	public int updateHitEachNotice(int notiNo);
	
	public CsVo selectNoticeForModify(int notiNo);
	
	public int updateEachNotice(CsVo csVo);
	
	public int deleteNotice(int notiNo);
	
	public void qnaWrite(QnaVo qnaVo);

	public int qnaTotalCount(String searchValue);
	
	public List<QnaVo> selectQnaList(int startRnum, int endRnum, String searchValue);

	public int updateHitEachQna(int qna_no);

	public QnaVo selectEachQna(int qna_no);

	public QnaVo selectQnaForModify(int qna_no);

	public int updateEachQna(QnaVo qnaVo);

	public void deleteQna(int qna_no);
}
