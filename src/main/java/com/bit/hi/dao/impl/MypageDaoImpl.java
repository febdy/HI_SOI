package com.bit.hi.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.MypageDao;
import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;

@Repository
public class MypageDaoImpl implements MypageDao {

	private static final String namespace="com.bit.hi.MypageMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	//영상관리 페이징
	@Override
	public List<VideoVo> selectMyVideoList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectPageForMyVideoList", mapCri);
	}
	
	//영상관리 페이징
	@Override
	public int selectTotalCountForMyVideo(String userId) {
		return sqlSession.selectOne(namespace+"selectTotalCountForMyVideo", userId);
	}
	
	//내 댓글
	@Override
	public List<CommentVo> selectCollectCommentList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectCollectCommentList", mapCri);
	}
	
	//내 댓글
	@Override
	public int selectTotalCountForComment(String userId) {
		return sqlSession.selectOne(namespace+"selectTotalCountForComment", userId);
	}
	
	//내가 올린 영상
	@Override
	public List<PostVo> selectCollectVideoList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectCollectVideoList", mapCri);
	}
	
	//내가 올린 영상
	@Override
	public int selectTotalCountForVideo(String userId) {
		return sqlSession.selectOne(namespace+"selectTotalCountForVideo", userId);
	}
		
	//스크랩
	@Override
	public List<ScrapVo> selectCollectScrapList(String userId, int startRnum, int endRnum) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectCollectScrapList", mapCri);
	}
	
	//스크랩
	@Override
	public int selectTotalCountForScrap(String userId) {
		return sqlSession.selectOne(namespace+"selectTotalCountForScrap", userId);
	}
	
	//회원정보 수정 nickname 체크
	@Override
	public UserVo selectNickChkForModify(UserVo userVo) {
		return sqlSession.selectOne(namespace+"selectNickChkForModify", userVo);
	}
	
	//회원정보 수정 수정완료 클릭시 확인사항
	@Override
	public int updateInfo(UserVo userVo) {
		return sqlSession.update(namespace+"updateInfo", userVo);
	}
	
	//영상관리 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	@Override
	public int updateVideo(int videoNo) {
		return sqlSession.update(namespace+"updateVideo", videoNo);
	}
	
	//영상관리 세부내용
	@Override
	public VideoVo selectEachVideoAnalyze(int videoNo) {
		return sqlSession.selectOne(namespace+"selectEachVideoAnalyze", videoNo);
	}
}
