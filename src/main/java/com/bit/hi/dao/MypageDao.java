package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

public interface MypageDao {
	//영상관리 페이징
	public List<VideoVo> selectMyVideoList(String userId, int startRnum, int endRnum) throws Exception;
	
	//영상관리 페이징
	public int selectTotalCountForMyVideo(String userId) throws Exception;
	
	//내 댓글
	public List<CommentVo> selectCollectCommentList(String userId, int startRnum, int endRnum) throws Exception;
	
	//내 댓글
	public int selectTotalCountForComment(String userId) throws Exception;
	
	//내가 올린 영상
	public List<PostVo> selectCollectVideoList(String userId, int startRnum, int endRnum) throws Exception;
	
	//내가 올린 영상
	public int selectTotalCountForVideo(String userId) throws Exception;
		
	//스크랩
	public List<ScrapVo> selectCollectScrapList(String userId, int startRnum, int endRnum) throws Exception;
	
	//스크랩
	public int selectTotalCountForScrap(String userId) throws Exception;
	
	//회원정보 수정 nickname 체크
	public UserVo selectNickChkForModify(UserVo userVo) throws Exception;
	
	//회원정보 수정 수정완료 클릭시 확인사항
	public int updateInfo(UserVo userVo) throws Exception;
	
	//영상관리 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	public int updateVideo(int videoNo) throws Exception;
	
	//영상관리 세부내용
	public VideoVo selectEachVideoAnalyze(int videoNo) throws Exception;
	
	//history - 최근 10개 그래프 면접 영상 정보 가져오기(Test용)
	//삭제해도 됨.(oracle에서 값 빼와서 차트 그려본 것임 test)
	public List<VideoVo> selectVideoForRecentlyTen(String userId) throws Exception;
	
	//history - mongoDB 에서 가져오기
	
	//최근 면접진단 10개
	public List<MongoVo> findRecentlyTenData(String key, String value) throws Exception;
	
	//상위 면접점수 6개
	public List<MongoVo> findTopSixData(String key, String value) throws Exception;
	
	//영상관리 세부사항 영상시간에 따른 움직임 변화 그래프
	public List<MongoVo> findCntForTotalTime(String key, String videoNo) throws Exception;
}
