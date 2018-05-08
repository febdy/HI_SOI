package com.bit.hi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.CommentVo;

@Repository
public class CommentDao {

	private static final String namespace="com.bit.hi.CommentMapper";
	
	private static final String namespace2="com.bit.hi.PostMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<CommentVo> selectCommentList(int page, int postNo) {
		Map<String, Object> mapComment=new HashMap<String, Object>();
		mapComment.put("page", page);
		mapComment.put("postNo", postNo);
		System.out.println(mapComment);
		return sqlSession.selectList(namespace+".selectCommentList", mapComment);
	}
	
	public int apiInsertComment(CommentVo commentVo) {
		return sqlSession.insert(namespace+".apiInsertComment", commentVo);
	}
	
	public CommentVo apiSelectComment(int cmtNo) {
		return sqlSession.selectOne(namespace+".apiSelectComment", cmtNo);
	}
	
	public void updateCmtCnt(CommentVo commentVo) {
		sqlSession.update(namespace2+".updateCmtCnt", commentVo);
	}
}
