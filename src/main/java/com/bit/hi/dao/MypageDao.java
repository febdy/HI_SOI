package com.bit.hi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<VideoVo> selectMyVideoList(String userId) {
		return sqlSession.selectList("mypage.selectMyVideoList", userId);
	}
	
	public List<PostVo> selectCollectVideoList(String userId) {
		return sqlSession.selectList("mypage.selectCollectVideoList", userId);
	}
	
	public List<CommentVo> selectCollectCommentList(String userId) {
		return sqlSession.selectList("mypage.selectCollectCommentList", userId);
	}
	
	public List<ScrapVo> selectCollectScrapList(String userId) {
		return sqlSession.selectList("mypage.selectCollectScrapList", userId);
	}
}
