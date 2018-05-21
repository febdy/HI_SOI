package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.CommentVo;

public interface CommentDao {
	public List<CommentVo> selectCommentList(int page, int postNo) throws Exception;
	
	public int apiInsertComment(CommentVo commentVo) throws Exception;
	
	public CommentVo apiSelectComment(int cmtNo) throws Exception;
	
	public void updateCmtCntForPlus(CommentVo commentVo) throws Exception;
	
	public int apiDeleteComment(CommentVo commentVo) throws Exception;
	
	public void updateCmtCntForMinus(CommentVo commentVo) throws Exception;
	
	public int apiUpdateComment(CommentVo commentVo) throws Exception;
}
