package com.bit.hi.service;

import java.util.Map;

import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;

public interface CsService {

	public Map<String, Object> noticeGetList(Integer crtPage, String kwd) throws Exception;
	
	public int addNoticeWrite(CsVo csVo) throws Exception;
	
	public CsVo viewEachNotice(int notiNo) throws Exception;
	
	public CsVo viewNoticeForModify(int notiNo) throws Exception;
	
	public int modifyEachNotice(CsVo csVo) throws Exception;
	
	public int deleteNotice(int notiNo) throws Exception;

	public void qnaWrite(QnaVo qnaVo) throws Exception;

	public Map<String, Object> qnaGetList(String searchValue, Integer crtPage) throws Exception;

	public QnaVo viewEachQna(int qna_no) throws Exception;

	public QnaVo viewQnaForModify(int qna_no) throws Exception;
	
	public int modifyEachQna(QnaVo qnaVo) throws Exception;

	public void deleteQna(int qna_no) throws Exception;
}
