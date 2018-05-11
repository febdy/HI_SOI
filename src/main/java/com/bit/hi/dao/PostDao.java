package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;

public interface PostDao {
	public List<VideoVo> selectMyVideoList(String userId);
	
	public VideoVo selectVideoInfo(int videoNo);
	
	public int selectVideoNo(String ioi);
	
	public int insertWritePost(PostVo postVo);
	
	//소이팩토리 리스트 뿌려주기
	public List<PostVo> selectAllPostList(int startRnum, int endRnum, String kwd);
	
	//소이팩토리 리스트 뿌려주기
	public int selectTotalCount(String kwd);
	
	public PostVo selectEachPost(int postNo);
	
	public int updateLike(int postNo);
	
	public void postUpdateHit(int postNo);
	
	public int deletePost(int postNo);
	
	public int insertScrapPost(ScrapVo scrapVo);
	
	//소이팩토리 정렬
	public List<PostVo> selectListForArray(int startRnum, int endRnum, String soi, String view, String comment, String latest);
	
	//소이팩토리 정렬에 사용될 총 포스트 수
	public int selectTotalCountForArray();
	
	public PostVo selectEachPostForModify(int postNo);
	
	public int updateEachPostForModify(PostVo postVo);
}
