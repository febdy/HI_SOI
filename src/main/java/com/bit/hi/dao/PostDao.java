package com.bit.hi.dao;

import java.util.List;

import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.util.ArrayCriteria;
import com.bit.hi.util.FindCriteria;

public interface PostDao {
	public List<VideoVo> selectMyVideoList(String userId) throws Exception;
	
	public VideoVo selectVideoInfo(int videoNo) throws Exception;
	
	public int selectVideoNo(String ioi) throws Exception;
	
	public int insertWritePost(PostVo postVo) throws Exception;
	
	//소이팩토리 리스트 뿌려주기
	public List<PostVo> selectAllPostList(FindCriteria fCri,  ArrayCriteria arrCri) throws Exception;
	
	//소이팩토리 리스트 뿌려주기
	public int selectTotalCount(FindCriteria fCri) throws Exception;
	
	public PostVo selectEachPost(int postNo) throws Exception;
	
	public int updateLike(int postNo) throws Exception;
	
	public void postUpdateHit(int postNo) throws Exception;
	
	public int deletePost(int postNo) throws Exception;
	
	public int insertScrapPost(ScrapVo scrapVo) throws Exception;
	
	public PostVo selectEachPostForModify(int postNo) throws Exception;
	
	public int updateEachPostForModify(PostVo postVo) throws Exception;
}
