package com.bit.hi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//소이팩토리 리스트 뿌려주기
	public List<PostVo> selectAllPostList(int startRnum, int endRnum, String kwd) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("post.selectPageForPost", mapCri);
	}
	//소이팩토리 리스트 뿌려주기
	public int selectTotalCount(String kwd) {
		return sqlSession.selectOne("post.selectTotalCountForPost", kwd);
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
	
	//인기순 정렬
	public List<PostVo> selectListForArraySoi(int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("post.selectListForArraySoi", mapCri);
	}
	
	//최신순 정렬
	public List<PostVo> selectListForArrayLatest(int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("post.selectListForArrayLatest", mapCri);
	}
	
	//조회수순 정렬
	public List<PostVo> selectListForArrayView(int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("post.selectListForArrayView", mapCri);
	}
	
	//조회수순 정렬
	public List<PostVo> selectListForArrayComment(int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("post.selectListForArrayComment", mapCri);
	}
		
	//정렬에 사용될 총 포스트 수
	public int selectTotalCountForArray() {
		return sqlSession.selectOne("post.selectTotalCountForArray");
	}
}
