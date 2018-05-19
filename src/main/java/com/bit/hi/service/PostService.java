package com.bit.hi.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.VideoVo;

public interface PostService {
	
	public List<VideoVo> getMyVideoList(String userId) throws Exception;
	
	public VideoVo getVideoInfo(int videoNo) throws Exception;
	
	public int writePost(PostVo postVo) throws Exception;
	
	public Map<String, Object> getAllPostList(Integer crtPage, String kwd) throws Exception;
	
	public PostVo getEachPost(int postNo) throws Exception;
	
	public int updateLike(int postNo) throws Exception;
	
	public int deletePost(int postNo) throws Exception;
	
	public int addScrapPost(int postNo, String userId) throws Exception;
	
	//소이팩토리 정렬
	public Map<String, Object> getArray(Integer crtPage, String soi, String view, String comment, String latest) throws Exception;
	
	public PostVo getEachPostForModify(int postNo) throws Exception;
	
	public int updateEachPostForModify(PostVo postVo) throws Exception;
}
