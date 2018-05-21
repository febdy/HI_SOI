package com.bit.hi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.CsDao;
import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;
import com.bit.hi.service.CsService;
import com.bit.hi.util.PageCriteria;

@Service
public class CsServiceImpl implements CsService {

	@Autowired
	private CsDao csDao;
	
	@Override
	public List<CsVo> noticeGetList(PageCriteria pCri, String kwd) throws Exception{
		// 페이지 뿌려주기 관련 작업
		
		System.out.println("startRnum: " + pCri.getStartPage());
		System.out.println("endRnum: " + pCri.getEndPage());

		return csDao.selectList(pCri.getStartPage(), pCri.getEndPage(), kwd);
	}
	
	@Override
	public int selectTotalCount(PageCriteria pCri, String kwd) throws Exception{
		return csDao.selectTotalCount(pCri, kwd);
	}
	
	@Override
	public int addNoticeWrite(CsVo csVo) throws Exception{
		/*for(int i=1;i<100;i++) {
			csVo.setNotiTitle(i+" 번째 공지입니다.");
			csDao.insertNoticeWrite(csVo);
		}*/
		System.out.println(csVo);
		return csDao.insertNoticeWrite(csVo);
	}
	
	@Override
	public CsVo viewEachNotice(int notiNo) throws Exception{
		csDao.updateHitEachNotice(notiNo);
		return csDao.selectEachNotice(notiNo);
	}
	
	@Override
	public CsVo viewNoticeForModify(int notiNo) throws Exception{
		return csDao.selectNoticeForModify(notiNo);
	}
	
	@Override
	public int modifyEachNotice(CsVo csVo) throws Exception{
		return csDao.updateEachNotice(csVo);
	}
	
	@Override
	public int deleteNotice(int notiNo) throws Exception{
		return csDao.deleteNotice(notiNo);
	}

	@Override
	public List<QnaVo> qnaGetList(PageCriteria pCri, String kwd) throws Exception{
		
		
		System.out.println("startRnum: " + pCri.getStartPage());
		System.out.println("endRnum: " + pCri.getEndPage());
		
		return csDao.selectQnaList(pCri.getStartPage(), pCri.getEndPage(), kwd);
	}
	
	@Override
	public int qnaTotalCount(PageCriteria pCri, String kwd) throws Exception{
		return csDao.qnaTotalCount(pCri, kwd);
	}
	
	@Override
	public void qnaWrite(QnaVo qnaVo) throws Exception{
		csDao.qnaWrite(qnaVo);
	}

	@Override
	public QnaVo viewEachQna(int qnaNo) throws Exception{
		csDao.updateHitEachQna(qnaNo);
		return csDao.selectEachQna(qnaNo);
	}

	@Override
	public QnaVo viewQnaForModify(int qnaNo) throws Exception{
		return csDao.selectQnaForModify(qnaNo);
	}
	
	@Override
	public int modifyEachQna(QnaVo qnaVo) throws Exception{
		return csDao.updateEachQna(qnaVo);
	}

	@Override
	public void deleteQna(int qnaNo) throws Exception{
		csDao.deleteQna(qnaNo);	

	}
}
