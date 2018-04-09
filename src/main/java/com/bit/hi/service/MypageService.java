package com.bit.hi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.MypageDao;
import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;

@Service
public class MypageService {
	
	@Autowired
	private MypageDao mypageDao;
	
	//내가 업로드 한 리스트(영상관리)
	public List<VideoVo> clipGetList(String userId) {
		return mypageDao.selectMyVideoList(userId);
	}
	//내가 소이팩토리에 올린 영상(댓글/영상/스크랩)
	public List<PostVo> getCollectVideoList(String userId) {
		return mypageDao.selectCollectVideoList(userId);
	}
	
	public List<CommentVo> getCollectCommentList(String userId) {
		return mypageDao.selectCollectCommentList(userId);
	}
	
	public List<ScrapVo> getCollectScrapList(String userId) {
		return mypageDao.selectCollectScrapList(userId);
	}
 }
