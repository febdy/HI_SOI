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
import com.bit.hi.domain.vo.UserVo;
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
	public int selectTotalCountForMyVideo(String userId) {
		return sqlSession.selectOne("mypage.selectTotalCountForMyVideo", userId);
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
	public int selectTotalCountForComment(String userId) {
		return sqlSession.selectOne("mypage.selectTotalCountForComment", userId);
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
	public int selectTotalCountForVideo(String userId) {
		return sqlSession.selectOne("mypage.selectTotalCountForVideo", userId);
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
	public int selectTotalCountForScrap(String userId) {
		return sqlSession.selectOne("mypage.selectTotalCountForScrap", userId);
	}
	
	//회원정보 수정 nickname 체크
	public UserVo selectNickChkForModify(UserVo userVo) {
		return sqlSession.selectOne("mypage.selectNickChkForModify", userVo);
	}
	
	//회원정보 수정 수정완료 클릭시 확인사항
	public int updateInfo(UserVo userVo) {
		return sqlSession.update("mypage.updateInfo", userVo);
	}
	
	public int updateVideo(int videoNo) {
		return sqlSession.update("mypage.updateVideo", videoNo);
	}
}
