package com.bit.hi.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;

public interface MypageService {
	
	//내가 업로드 한 리스트(영상관리)
	public Map<String, Object> clipGetList(String userId, Integer crtPage) throws Exception;
	
	//마이페이지(댓글)
	public Map<String, Object> getCollectCommentList(String userId, Integer crtPage) throws Exception;
	
	//마이페이지(영상)
	public Map<String, Object> getCollectVideoList(String userId, Integer crtPage) throws Exception;
	
	//마이페이지(스크랩)
	public Map<String, Object> getCollectScrapList(String userId, Integer crtPage) throws Exception;
	
	//회원정보수정 userId로 회원 정보 가져오기
	public UserVo getUserInfo(String userId) throws Exception;
	
	//회원정보 수정 nickname 체크
	public boolean nickChkForModify(UserVo userVo) throws Exception;
	
	public int modifyComplete(UserVo userVo, HttpSession session) throws Exception;
	
	//영상관리 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	public int updateVideo(int videoNo) throws Exception;
	
	//영상관리 세부내용
	public VideoVo getEachVideoAnalyze(int videoNo) throws Exception;
	
	//histroy - 3개 차트 한꺼번에 3개 list를 map으로 받기
	//삭제해도 됨.(oracle에서 값 빼와서 차트 그려본 것임 test)
	public Map<String, Object> getVideoForChart(String userId) throws Exception;
	
	//mongoDB에서 데이터를 뽑기위해, spring에서 query문 작성해서, list형으로 find해 온 다음에, map으로 담아야 함.
	public Map<String, Object> getMongoForChart(String userId) throws Exception;
 }
