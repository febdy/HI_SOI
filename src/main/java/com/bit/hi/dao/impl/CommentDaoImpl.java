package com.bit.hi.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.CommentDao;
import com.bit.hi.domain.vo.CommentVo;

@Repository
public class CommentDaoImpl implements CommentDao {

	private static final String namespace="com.bit.hi.CommentMapper.";
	
	private static final String namespace2="com.bit.hi.PostMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CommentVo> selectCommentList(int page, int postNo) throws Exception {
		Map<String, Object> mapComment=new HashMap<String, Object>();
		mapComment.put("page", page);
		mapComment.put("postNo", postNo);
		System.out.println(mapComment);
		return sqlSession.selectList(namespace+"selectCommentList", mapComment);
	}
	
	@Override
	public int apiInsertComment(CommentVo commentVo) throws Exception {
		return sqlSession.insert(namespace+"apiInsertComment", commentVo);
	}
	
	@Override
	public CommentVo apiSelectComment(int cmtNo) throws Exception {
		return sqlSession.selectOne(namespace+"apiSelectComment", cmtNo);
	}
	
	@Override
	public void updateCmtCnt(CommentVo commentVo) throws Exception {
		sqlSession.update(namespace2+"updateCmtCnt", commentVo);
	}
	
	@Override
	public int apiDeleteComment(int cmtNo) throws Exception {
		return sqlSession.delete(namespace+"apiDeleteComment", cmtNo);
	}
}
