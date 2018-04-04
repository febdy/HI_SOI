package com.bit.hi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.PostDao;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.VideoVo;

@Service
public class PostService {

	@Autowired
	private PostDao postDao;
	
	public List<VideoVo> getListVideo(String userId) {
		return postDao.selectListVideo(userId);
	}
	
	public VideoVo getVideoInfo(int videoNo) {
		return postDao.selectVideoInfo(videoNo);
	}
	
	public int writePost(PostVo postVo, String ioi) {
		int videoNo=postDao.selectVideoNo(ioi); //임시로 videoOriginName으로 videoNo을 끌고 올것임.
		
		postVo.setVideoNo(videoNo);
		System.out.println(postVo);
		return postDao.insertWritePost(postVo);
	}
	
	public List<PostVo> getAllPostList() {
		return postDao.selectAllPostList();
	}
	
	public PostVo getEachPost(int postNo) {
		return postDao.selectEachPost(postNo);
	}
}
