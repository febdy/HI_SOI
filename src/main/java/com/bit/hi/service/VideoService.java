package com.bit.hi.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bit.hi.domain.vo.VideoVo;

@Service
public class VideoService {
	
	public void upload(MultipartFile file, VideoVo videoVo) {
		System.out.println("service 성공");
		
		System.out.println(videoVo.toString());
		System.out.println(file);
	}
}
