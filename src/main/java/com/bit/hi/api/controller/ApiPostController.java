package com.bit.hi.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.PostService;

@Controller
@RequestMapping("/post")
public class ApiPostController {
	
	@Autowired
	private PostService postService;
	
	@ResponseBody
	@RequestMapping(value="/api/modallist")
	public List<VideoVo> apiModalList(HttpSession session) {
		System.out.println("apiModalList 진입");
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		System.out.println(authUser.getUserId());
		List<VideoVo> videoList=postService.getMyVideoList(authUser.getUserId());
		
		System.out.println(videoList);
		return videoList;
	}
	
	@ResponseBody
	@RequestMapping(value="/api/modaltitle")
	public VideoVo apiModalTitle(@RequestParam("no") int videoNo) {
		System.out.println("apiModalTitle 진입");
		VideoVo videoVo=postService.getVideoInfo(videoNo);
		return videoVo;
	}
	
	@ResponseBody
	@RequestMapping(value="/api/updateLike")
	public int apiUpdateLike(@RequestParam("postNo") int postNo) {
		System.out.println("apiUpdateLike 진입");
		return postService.updateLike(postNo);
	}
	
	@ResponseBody
	@RequestMapping(value="/api/addScrapPost")
	public int apiAddScrapPost(@RequestParam("postNo") int postNo, HttpSession session) {
		System.out.println("apiAddScrap 진입");
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		String userId=authUser.getUserId();
		return postService.addScrapPost(postNo, userId);
	}
	
}
