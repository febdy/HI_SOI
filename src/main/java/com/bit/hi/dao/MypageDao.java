package com.bit.hi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//영상관리 페이징
	public List<VideoVo> selectMyVideoList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("mypage.selectPageForMyVideoList", mapCri);
	}
	//영상관리 페이징
	public int selectTotalCountForMyVideo() {
		return sqlSession.selectOne("mypage.selectTotalCountForMyVideo");
	}
	
	//내 댓글
	public List<CommentVo> selectCollectCommentList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("mypage.selectCollectCommentList", mapCri);
	}
	//내 댓글
	public int selectTotalCountForComment() {
		return sqlSession.selectOne("mypage.selectTotalCountForComment");
	}
	
	//내가 올린 영상
	public List<PostVo> selectCollectVideoList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("mypage.selectCollectVideoList", mapCri);
	}
	//내가 올린 영상
	public int selectTotalCountForVideo() {
		return sqlSession.selectOne("mypage.selectTotalCountForVideo");
	}
		
	//스크랩
	public List<ScrapVo> selectCollectScrapList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("mypage.selectCollectScrapList", mapCri);
	}
	//스크랩
	public int selectTotalCountForScrap() {
		return sqlSession.selectOne("mypage.selectTotalCountForScrap");
	}
}
