package com.bit.hi.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

public interface VideoService {
	
	public int upload(MultipartHttpServletRequest file, VideoVo videoVo) throws Exception;
	
	//public VideoVo getCorrectedVideo(int videoNo) throws Exception;
	
	public MongoVo getCorrectedVideo(int videoNo) throws Exception;
}
