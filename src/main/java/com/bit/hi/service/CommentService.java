package com.bit.hi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.CommentDao;
import com.bit.hi.domain.vo.CommentVo;

@Service
public class CommentService {

	@Autowired
	private CommentDao commentDao;
	
	public List<CommentVo> getCommentList(int page, int postNo) {
		return commentDao.selectCommentList(page, postNo);
	}
	
	public int apiAddComment(CommentVo commentVo) {
		return commentDao.apiInsertComment(commentVo);
	}
	
	public CommentVo apiGetComment(int cmtNo) {
		return commentDao.apiSelectComment(cmtNo);
	}
}
