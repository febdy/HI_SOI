package com.bit.hi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
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
	
	@RequestMapping("/modifyInfo")
	public String modifyInfo() {
		
		return "mypage/modifyInfo";
	}
	
	@RequestMapping("/collect/comment")
	public String collectComment(HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		List<CommentVo> commentList= mypageService.getCollectCommentList(authUser.getUserId());
		System.out.println(commentList);
		model.addAttribute("commentList",commentList);
		return "mypage/collectcomment";
	}
	
	@RequestMapping("/collect/video")
	public String collectVideo(HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		List<PostVo> postList= mypageService.getCollectVideoList(authUser.getUserId());
		model.addAttribute("postList", postList);
		return "mypage/collectvideo";
	}
	
	@RequestMapping("/collect/scrap")
	public String collectScrap(HttpSession session, Model model) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		List<ScrapVo> scrapList= mypageService.getCollectScrapList(authUser.getUserId());
		model.addAttribute("scrapList", scrapList);
		return "mypage/collectscrap";
	}
}
