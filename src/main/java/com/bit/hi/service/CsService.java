package com.bit.hi.service;

import java.util.List;

import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;
import com.bit.hi.util.PageCriteria;

public interface CsService {

	public List<CsVo> noticeGetList(PageCriteria pCri, String kwd) throws Exception;
	
	public int selectTotalCount(PageCriteria pCri, String kwd) throws Exception;
	
	public int addNoticeWrite(CsVo csVo) throws Exception;
	
	public CsVo viewEachNotice(int notiNo) throws Exception;
	
	public CsVo viewNoticeForModify(int notiNo) throws Exception;
	
	public int modifyEachNotice(CsVo csVo) throws Exception;
	
	public int deleteNotice(int notiNo) throws Exception;

	public List<QnaVo> qnaGetList(PageCriteria pCri, String kwd) throws Exception;
	
	public int qnaTotalCount(PageCriteria pCri, String kwd) throws Exception;
	
	public void qnaWrite(QnaVo qnaVo) throws Exception;

	public QnaVo viewEachQna(int qnaNo) throws Exception;

	public QnaVo viewQnaForModify(int qnaNo) throws Exception;
	
	public int modifyEachQna(QnaVo qnaVo) throws Exception;

	public void deleteQna(int qnaNo) throws Exception;
}
