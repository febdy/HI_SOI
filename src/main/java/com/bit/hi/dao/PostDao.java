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

	private static final String namespace="com.bit.hi.PostMapper";
	
	private static final String namespace2="com.bit.hi.VideoMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<VideoVo> selectMyVideoList(String userId) {
		return sqlSession.selectList(namespace2+".selectMyVideoList", userId);
	}
	
	public VideoVo selectVideoInfo(int videoNo) {
		return sqlSession.selectOne(namespace2+".selectVideoInfo", videoNo);
	}
	
	public int selectVideoNo(String ioi) {
		return sqlSession.selectOne(namespace2+".selectVideoNo", ioi);
	}
	
	public int insertWritePost(PostVo postVo) {
		return sqlSession.insert(namespace+".insertWritePost", postVo);
	}
	
	//소이팩토리 리스트 뿌려주기
	public List<PostVo> selectAllPostList(int startRnum, int endRnum, String kwd) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+".selectPageForPost", mapCri);
	}
	//소이팩토리 리스트 뿌려주기
	public int selectTotalCount(String kwd) {
		return sqlSession.selectOne(namespace+".selectTotalCountForPost", kwd);
	}
	
	public PostVo selectEachPost(int postNo) {
		return sqlSession.selectOne(namespace+".selectEachPost", postNo);
	}
	
	public int updateLike(int postNo) {
		return sqlSession.update(namespace+".updateLike", postNo);
	}
	
	public void postUpdateHit(int postNo) {
		sqlSession.update(namespace+".postUpdateHit", postNo);
	}
	
	public int deletePost(int postNo) {
		return sqlSession.delete(namespace+".deletePost", postNo);
	}
	
	public int insertScrapPost(ScrapVo scrapVo) {
		return sqlSession.insert(namespace+".insertScrapPost", scrapVo);
	}
	
	//소이팩토리 정렬
	public List<PostVo> selectListForArray(int startRnum, int endRnum, String soi, String view, String comment, String latest) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("soi", soi);
		mapCri.put("view", view);
		mapCri.put("comment", comment);
		mapCri.put("latest", latest);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+".selectListForArray", mapCri);
	}
	
	//소이팩토리 정렬에 사용될 총 포스트 수
	public int selectTotalCountForArray() {
		return sqlSession.selectOne(namespace+".selectTotalCountForArray");
	}
	
	public PostVo selectEachPostForModify(int postNo) {
		return sqlSession.selectOne(namespace+".selectEachPostForModify", postNo);
	}
	
	public int updateEachPostForModify(PostVo postVo) {
		return sqlSession.update(namespace+".updateEachPostForModify", postVo);
	}
}
