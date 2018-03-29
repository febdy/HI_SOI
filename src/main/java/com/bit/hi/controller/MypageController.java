package com.bit.hi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@RequestMapping("/history")
	public String history() {
		return "mypage/history";
	}
	
	@RequestMapping("/imageclip")
	public String imageclip() {
		return "mypage/imageclip";
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
