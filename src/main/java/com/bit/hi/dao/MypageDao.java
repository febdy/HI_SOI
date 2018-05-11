package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;

public interface MypageDao {
	//영상관리 페이징
	public List<VideoVo> selectMyVideoList(String userId, int startRnum, int endRnum);
	
	//영상관리 페이징
	public int selectTotalCountForMyVideo(String userId);
	
	//내 댓글
	public List<CommentVo> selectCollectCommentList(String userId, int startRnum, int endRnum);
	
	//내 댓글
	public int selectTotalCountForComment(String userId);
	
	//내가 올린 영상
	public List<PostVo> selectCollectVideoList(String userId, int startRnum, int endRnum);
	
	//내가 올린 영상
	public int selectTotalCountForVideo(String userId);
		
	//스크랩
	public List<ScrapVo> selectCollectScrapList(String userId, int startRnum, int endRnum);
	
	//스크랩
	public int selectTotalCountForScrap(String userId);
	
	//회원정보 수정 nickname 체크
	public UserVo selectNickChkForModify(UserVo userVo);
	
	//회원정보 수정 수정완료 클릭시 확인사항
	public int updateInfo(UserVo userVo);
	
	//영상관리 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	public int updateVideo(int videoNo);
	
	//영상관리 세부내용
	public VideoVo selectEachVideoAnalyze(int videoNo);
}
