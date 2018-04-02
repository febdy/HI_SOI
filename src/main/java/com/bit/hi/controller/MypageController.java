package com.bit.hi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("/history")
	public String history() {
		return "mypage/history";
	}
	
	@RequestMapping("/videoclip")
	public String videoClip(HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		List<VideoVo> myVideo=mypageService.clipGetList(authUser.getUserId());
		System.out.println(myVideo);
		model.addAttribute("myVideo", myVideo);
		return "mypage/videoclip";
	}
	
	@RequestMapping("/videoclip/detail")
	public String videoClipDetail() {
		return "mypage/videodetail";
	}
	
	@RequestMapping("/collect")
	public String collect() {
		return "mypage/collect";
		
	}
	
	@RequestMapping("/modifyInfo")
	public String modifyInfo() {
		
		return "mypage/modifyInfo";
	}
}
