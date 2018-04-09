package com.bit.hi.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.hi.domain.vo.UserVo;
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
	
	//내가 진단받은 영상관리
	@RequestMapping("/videoclip")
	public String videoClip(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> myVideoMap=mypageService.clipGetList(authUser.getUserId(), crtPage);
		System.out.println(myVideoMap);
		model.addAttribute("myVideoMap", myVideoMap);
		return "mypage/videoclip";
	}
	
	@RequestMapping("/videoclip/detail")
	public String videoClipDetail() {
		return "mypage/videodetail";
	}
	
	//내 댓글
	@RequestMapping("/collect/comment")
	public String collectComment(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> commentMap= mypageService.getCollectCommentList(authUser.getUserId(), crtPage);
		System.out.println(commentMap);
		model.addAttribute("commentMap", commentMap);
		return "mypage/collectcomment";
	}
	
	//내가 올린 영상
	@RequestMapping("/collect/video")
	public String collectVideo(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> videoMap= mypageService.getCollectVideoList(authUser.getUserId(), crtPage);
		model.addAttribute("videoMap", videoMap);
		return "mypage/collectvideo";
	}
	
	//스크랩
	@RequestMapping("/collect/scrap")
	public String collectScrap(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> scrapMap= mypageService.getCollectScrapList(authUser.getUserId(), crtPage);
		model.addAttribute("scrapMap", scrapMap);
		return "mypage/collectscrap";
	}
	
	@RequestMapping("/modifyInfo")
	public String modifyInfo() {
		
		return "mypage/modifyInfo";
	}
}
