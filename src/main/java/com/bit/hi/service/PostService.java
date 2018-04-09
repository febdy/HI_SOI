package com.bit.hi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bit.hi.dao.PostDao;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.VideoVo;

@Service
public class PostService {

	@Autowired
	private PostDao postDao;
	
	public List<VideoVo> getMyVideoList(String userId) {
		return postDao.selectMyVideoList(userId);
	}
	
	public VideoVo getVideoInfo(int videoNo) {
		return postDao.selectVideoInfo(videoNo);
	}
	
	//현재 제목으로 비디오번호를 찾다보니, 동일한 제목의 파일을 2개 tbl_video에 넣을 경우, 업로드하기 안되는 경우 발생함.
	public int writePost(PostVo postVo, int videoNo) {
		postVo.setVideoNo(videoNo);
		System.out.println(postVo);
		return postDao.insertWritePost(postVo);
	}
	
	public List<PostVo> getAllPostList() {
		return postDao.selectAllPostList();
	}
	
	@Transactional
	public PostVo getEachPost(int postNo) {
		postDao.postUpdateHit(postNo);
		return postDao.selectEachPost(postNo);
	}
	
	public int updateLike(int postNo) {
		return postDao.updateLike(postNo);
	}
}
