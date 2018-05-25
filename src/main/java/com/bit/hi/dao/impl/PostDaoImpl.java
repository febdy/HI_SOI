package com.bit.hi.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.PostDao;
import com.bit.hi.domain.vo.LikeVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.util.ArrayCriteria;
import com.bit.hi.util.FindCriteria;

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
	public List<PostVo> selectAllPostList(FindCriteria fCri, ArrayCriteria arrCri) throws Exception {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", fCri.getStartPage());
		mapCri.put("endRnum", fCri.getEndPage());
		mapCri.put("findType", fCri.getFindType());
		mapCri.put("keyword", fCri.getKeyword());
		mapCri.put("facArray", arrCri.getFacArray());
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectPageForPost", mapCri);
	}
	
	//소이팩토리 리스트 뿌려주기
	@Override
	public int selectTotalCount(FindCriteria fCri) throws Exception {
		return sqlSession.selectOne(namespace+"selectTotalCountForPost", fCri);
	}
	
	@Override
	public PostVo selectEachPost(int postNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectEachPost", postNo);
	}
	
	/*@Override
	public int updateLike(int postNo) throws Exception {
		return sqlSession.update(namespace+"updateLike", postNo);
	}*/
	
	@Override
	public void postUpdateHit(int postNo) throws Exception {
		sqlSession.update(namespace+"postUpdateHit", postNo);
	}
	
	@Override
	public int deletePost(int postNo) throws Exception {
		return sqlSession.delete(namespace+"deletePost", postNo);
	}
	
	/*@Override
	public int insertScrapPost(ScrapVo scrapVo) throws Exception {
		return sqlSession.insert(namespace+"insertScrapPost", scrapVo);
	}*/
	
	@Override
	public PostVo selectEachPostForModify(int postNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectEachPostForModify", postNo);
	}
	
	@Override
	public int updateEachPostForModify(PostVo postVo) throws Exception {
		return sqlSession.update(namespace+"updateEachPostForModify", postVo);
	}
	
	@Override
	public List<ScrapVo> selectUserScrapList(String userId) throws Exception {
		return sqlSession.selectList(namespace+"selectUserScrapList", userId);
	}
	
	@Override
	public int deleteUserScrap(ScrapVo scrapVo) throws Exception {
		return sqlSession.delete(namespace+"deleteUserScrap", scrapVo);
	}
	
	@Override
	public int insertUserScrap(ScrapVo scrapVo) throws Exception {
		return sqlSession.insert(namespace+"insertUserScrap", scrapVo);
	}
	
	@Override
	public List<LikeVo> selectUserLikeList(String userId) throws Exception {
		return sqlSession.selectList(namespace+"selectUserLikeList", userId);
	}
	
	@Override
	public int deleteUserLike(LikeVo likeVo) throws Exception {
		return sqlSession.delete(namespace+"deleteUserLike", likeVo);
	}
	
	@Override
	public int insertUserLike(LikeVo likeVo) throws Exception {
		return sqlSession.insert(namespace+"insertUserLike", likeVo);
	}

	@Override
	public int updateLikeCntForPlus(LikeVo likeVo) throws Exception {
		return sqlSession.update(namespace+"updateLikeCntForPlus", likeVo);
	}
	
	@Override
	public int updateLikeCntForMinus(LikeVo likeVo) throws Exception {
		return sqlSession.update(namespace+"updateLikeCntForMinus", likeVo);
	}
}
