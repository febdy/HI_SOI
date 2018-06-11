package com.bit.hi.service;

import java.util.List;

import com.bit.hi.domain.vo.LikeVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;
import com.bit.hi.util.ArrayCriteria;
import com.bit.hi.util.FindCriteria;

public interface PostService {
	
	public List<VideoVo> getMyVideoList(String userId) throws Exception;
	
	public VideoVo getVideoInfo(int videoNo) throws Exception;
	
	public int writePost(PostVo postVo) throws Exception;
	
	//소이팩토리 뿌려주기
	public List<PostVo> getAllPostList(FindCriteria fCri, ArrayCriteria arrCri) throws Exception;
	
	//소이팩토리 뿌려주기 위한 갯수 세기
	public int selectTotalCount(FindCriteria fCri) throws Exception;
	
	public PostVo getEachPost(int postNo) throws Exception;
	
	//public int updateLike(int postNo) throws Exception;
	
	public int deletePost(int postNo) throws Exception;
	
	//public int addScrapPost(int postNo, String userId) throws Exception;

	public PostVo getEachPostForModify(int postNo) throws Exception;
	
	public int updateEachPostForModify(PostVo postVo) throws Exception;
	
	public List<ScrapVo> getUserScrapList(String userId) throws Exception;
	
	public int switchUserScrap(ScrapVo scrapVo) throws Exception;
	
	public List<LikeVo> getUserLikeList(String userId) throws Exception;
	
	public boolean switchUserLike(LikeVo likeVo) throws Exception;
	
	//horizontalChartInfo 가져오기
	public MongoVo selectSoiChartInfo(int videoNo) throws Exception;
}
