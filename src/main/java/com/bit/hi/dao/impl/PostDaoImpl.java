package com.bit.hi.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.PostDao;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.util.ArrayCriteria;
import com.bit.hi.util.PageCriteria;

@Repository
public class PostDaoImpl implements PostDao {

	private static final String namespace="com.bit.hi.PostMapper.";
	
	private static final String namespace2="com.bit.hi.VideoMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<VideoVo> selectMyVideoList(String userId) throws Exception {
		return sqlSession.selectList(namespace2+"selectMyVideoList", userId);
	}
	
	@Override
	public VideoVo selectVideoInfo(int videoNo) throws Exception {
		return sqlSession.selectOne(namespace2+"selectVideoInfo", videoNo);
	}
	
	@Override
	public int selectVideoNo(String ioi) throws Exception {
		return sqlSession.selectOne(namespace2+"selectVideoNo", ioi);
	}
	
	@Override
	public int insertWritePost(PostVo postVo) throws Exception {
		return sqlSession.insert(namespace+"insertWritePost", postVo);
	}
	
	//소이팩토리 리스트 뿌려주기
	@Override
	public List<PostVo> selectAllPostList(int startRnum, int endRnum, String kwd, ArrayCriteria arrCri) throws Exception {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		mapCri.put("facArray", arrCri.getFacArray());
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectPageForPost", mapCri);
	}
	
	//소이팩토리 리스트 뿌려주기
	@Override
	public int selectTotalCount(PageCriteria pCri, String kwd) throws Exception {
		return sqlSession.selectOne(namespace+"selectTotalCountForPost", kwd);
	}
	
	@Override
	public PostVo selectEachPost(int postNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectEachPost", postNo);
	}
	
	@Override
	public int updateLike(int postNo) throws Exception {
		return sqlSession.update(namespace+"updateLike", postNo);
	}
	
	@Override
	public void postUpdateHit(int postNo) throws Exception {
		sqlSession.update(namespace+"postUpdateHit", postNo);
	}
	
	@Override
	public int deletePost(int postNo) throws Exception {
		return sqlSession.delete(namespace+"deletePost", postNo);
	}
	
	@Override
	public int insertScrapPost(ScrapVo scrapVo) throws Exception {
		return sqlSession.insert(namespace+"insertScrapPost", scrapVo);
	}
	
	@Override
	public PostVo selectEachPostForModify(int postNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectEachPostForModify", postNo);
	}
	
	@Override
	public int updateEachPostForModify(PostVo postVo) throws Exception {
		return sqlSession.update(namespace+"updateEachPostForModify", postVo);
	}
}
