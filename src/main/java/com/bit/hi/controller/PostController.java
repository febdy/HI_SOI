package com.bit.hi.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.service.PostService;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostService postService;

	@RequestMapping(value="/soifactorylist")
	public String soiFactoryList(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, 
			@RequestParam(value="kwd", required=false, defaultValue="") String kwd, Model model) {
		Map<String, Object> bMap=postService.getAllPostList(crtPage, kwd);
		model.addAttribute("bindMap", bMap);
		return "soifactory/fac-main";
	}
	
	@RequestMapping(value="soiread/{postNo}")
	public String soiRead(Model model, @PathVariable("postNo") int postNo) {
		PostVo postVo=postService.getEachPost(postNo);
		model.addAttribute("postVo", postVo);
		model.addAttribute("ctrl","\r\n");
		return "soifactory/soiread";
	}
	
	@RequestMapping(value="/soiwriteform")
	public String soiWriteForm() {
		return "soifactory/soiwriteform";
	}
	
	@RequestMapping(value="/soiwrite")
	public String soiWrite(@ModelAttribute PostVo postVo,@RequestParam("videoTitle") String ioi, @RequestParam("videoNo") int videoNo, HttpSession session) {
		System.out.println(postVo);
		System.out.println(videoNo);
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		postVo.setWriterId(authUser.getUserId()); //유저 아이디
		postService.writePost(postVo,videoNo); //ioi로 videoNo를 가져와서, 일단 post에 값 insert해볼 것임.
		return "redirect:/post/soifactorylist";
	}
	
	@RequestMapping(value="/soidelete")
	public String soiDelete(@RequestParam("postNo") int postNo) {
		System.out.println(postNo);
		postService.deletePost(postNo);
		return "redirect:/post/soifactorylist";
	}
	
	@RequestMapping(value="/array")
	public String array(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, Model model,
			@RequestParam(value="soi", required=false) String soi,
			@RequestParam(value="view", required=false) String view,
			@RequestParam(value="comment", required=false) String comment,
			@RequestParam(value="latest", required=false) String latest) {
		Map<String, Object> bMap=postService.getArray(crtPage,soi,view,comment,latest);
		model.addAttribute("bindMap", bMap);
		return "soifactory/fac-main";
	}

}
