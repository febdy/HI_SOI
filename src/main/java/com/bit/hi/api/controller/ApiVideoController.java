package com.bit.hi.api.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.VideoService;

@Controller
@RequestMapping("/interview")
public class ApiVideoController {
	
	@Autowired
	private VideoService videoService;
	
	@ResponseBody
	@RequestMapping("/api/upload")
	public int interviewApiUpload(MultipartHttpServletRequest file, HttpSession session) {
		System.out.println(file);
		
		VideoVo videoVo=new VideoVo();
		
		UserVo authUser=(UserVo) session.getAttribute("authUser");
		
		videoVo.setUserId(authUser.getUserId());
		
		return videoService.upload(file,videoVo);
	}
	
	@ResponseBody
	@RequestMapping("/api/selectcorrectedvideo")
	public VideoVo getCorrectedVideo(@RequestParam("videoNo") int videoNo) {
		VideoVo aa=videoService.getCorrectedVideo(videoNo);
		System.out.println(aa);
		return aa;
	}
	
}
