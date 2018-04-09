package com.bit.hi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;

@Repository
public class PostDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<VideoVo> selectMyVideoList(String userId) {
		return sqlSession.selectList("video.selectMyVideoList", userId);
	}
	
	public VideoVo selectVideoInfo(int videoNo) {
		return sqlSession.selectOne("video.selectVideoInfo", videoNo);
	}
	
	public int selectVideoNo(String ioi) {
		return sqlSession.selectOne("video.selectVideoNo", ioi);
	}
	
	public int insertWritePost(PostVo postVo) {
		return sqlSession.insert("post.insertWritePost", postVo);
	}
	
	public List<PostVo> selectAllPostList() {
		return sqlSession.selectList("post.selectAllPostList");
	}
	
	public PostVo selectEachPost(int postNo) {
		return sqlSession.selectOne("post.selectEachPost", postNo);
	}
	
	public int updateLike(int postNo) {
		return sqlSession.update("post.updateLike", postNo);
	}
	
	public void postUpdateHit(int postNo) {
		sqlSession.update("post.postUpdateHit", postNo);
	}
	
	public int deletePost(int postNo) {
		return sqlSession.delete("post.deletePost", postNo);
	}
	
	public int insertScrapPost(ScrapVo scrapVo) {
		return sqlSession.insert("post.insertScrapPost", scrapVo);
	}
}
