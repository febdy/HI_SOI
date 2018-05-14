package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.CommentVo;

public interface CommentDao {
	public List<CommentVo> selectCommentList(int page, int postNo) throws Exception;
	
	public int apiInsertComment(CommentVo commentVo) throws Exception;
	
	public CommentVo apiSelectComment(int cmtNo) throws Exception;
	
	public void updateCmtCnt(CommentVo commentVo) throws Exception;
}
