package com.bit.hi.service;

import java.util.List;

import com.bit.hi.domain.vo.CommentVo;

public interface CommentService {
	public List<CommentVo> getCommentList(int page, int postNo) throws Exception;
	
	public int apiAddComment(CommentVo commentVo) throws Exception;
	
	public CommentVo apiGetComment(int cmtNo) throws Exception;
	
	public int apiDeleteComment(CommentVo commentVo) throws Exception;
	
	public int apiModifyComment(CommentVo commentVo) throws Exception;
}
