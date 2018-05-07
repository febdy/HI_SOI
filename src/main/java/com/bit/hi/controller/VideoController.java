package com.bit.hi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/interview")
public class VideoController {
	
	@RequestMapping(value="/uploadmode")
	public String uploadmode() {
		
		return "interview/uploadmode";
	}
	
	/*@RequestMapping(value="/upload")
	public String upload(@RequestParam("file") MultipartFile file, HttpSession session) {
		System.out.println("받기 성공");
		
		VideoVo videoVo=new VideoVo();
			
		UserVo authUser=(UserVo) session.getAttribute("authUser");
		
		videoVo.setUserId(authUser.getUserId());

		videoService.upload(file,videoVo);
		
		System.out.println(videoVo);
		System.out.println("저장 완료");

		return "redirect:/interview/uploadmode";
	}*/
	
	@RequestMapping(value="/livemode")
	public String livemode() {
		
		return "interview/livemode";
	}
}
