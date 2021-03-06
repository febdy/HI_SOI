package com.bit.hi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bit.hi.dao.CommentDao;
import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDao commentDao;
	
	@Override
	public List<CommentVo> getCommentList(int page, int postNo) throws Exception{
		return commentDao.selectCommentList(page, postNo);
	}
	
	@Transactional
	@Override
	public int apiAddComment(CommentVo commentVo) throws Exception{
		commentDao.updateCmtCntForPlus(commentVo);
		return commentDao.apiInsertComment(commentVo);
	}
	
	@Override
	public CommentVo apiGetComment(int cmtNo) throws Exception{
		return commentDao.apiSelectComment(cmtNo);
	}
	
	@Override
	public int apiDeleteComment(CommentVo commentVo) throws Exception{
		commentDao.updateCmtCntForMinus(commentVo);
		return commentDao.apiDeleteComment(commentVo);
	}
	
	@Override
	public int apiModifyComment(CommentVo commentVo) throws Exception{
		return commentDao.apiUpdateComment(commentVo);
	}
}
