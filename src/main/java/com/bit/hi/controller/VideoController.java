package com.bit.hi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.VideoService;

@Controller
@RequestMapping("/interview")
public class VideoController {
	
	@Autowired
	private VideoService videoService;

	@RequestMapping(value="/uploadmode")
	public String uploadmode() {
		
		return "interview/uploadmode";
	}
	
	@RequestMapping(value="/upload")
	public String upload(@RequestParam("file") MultipartFile file, HttpSession session) {
		System.out.println("받기 성공");
		
		VideoVo videoVo=new VideoVo();
			
		UserVo authUser=(UserVo) session.getAttribute("authUser");
		
		videoVo.setUserId(authUser.getUserId());

		videoService.upload(file,videoVo);
		
		System.out.println(videoVo);
		System.out.println("저장 완료");

		return "redirect:/interview/uploadmode";
	}
	
	@RequestMapping(value="/livemode")
	public String livemode() {
		
		return "interview/livemode";
	}
}
