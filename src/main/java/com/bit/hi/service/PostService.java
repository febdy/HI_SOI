package com.bit.hi.service;

import java.util.List;

import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.util.ArrayCriteria;
import com.bit.hi.util.PageCriteria;

public interface PostService {
	
	public List<VideoVo> getMyVideoList(String userId) throws Exception;
	
	public VideoVo getVideoInfo(int videoNo) throws Exception;
	
	public int writePost(PostVo postVo) throws Exception;
	
	//소이팩토리 뿌려주기
	public List<PostVo> getAllPostList(PageCriteria pCri, String kwd) throws Exception;
	
	//소이팩토리 뿌려주기 위한 갯수 세기
	public int selectTotalCount(PageCriteria pCri, String kwd) throws Exception;
	
	public PostVo getEachPost(int postNo) throws Exception;
	
	public int updateLike(int postNo) throws Exception;
	
	public int deletePost(int postNo) throws Exception;
	
	public int addScrapPost(int postNo, String userId) throws Exception;
	
	//소이팩토리 정렬
	public List<PostVo> getArray(PageCriteria pCri, ArrayCriteria arrCri) throws Exception;
	
	//정렬을 위한 갯수 세기
	public int selectTotalCountForArray(PageCriteria pCri, String kwd) throws Exception;
	
	public PostVo getEachPostForModify(int postNo) throws Exception;
	
	public int updateEachPostForModify(PostVo postVo) throws Exception;
}
