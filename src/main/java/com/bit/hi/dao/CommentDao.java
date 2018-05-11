package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.CommentVo;

public interface CommentDao {
	public List<CommentVo> selectCommentList(int page, int postNo);
	
	public int apiInsertComment(CommentVo commentVo);
	
	public CommentVo apiSelectComment(int cmtNo);
	
	public void updateCmtCnt(CommentVo commentVo);
}
