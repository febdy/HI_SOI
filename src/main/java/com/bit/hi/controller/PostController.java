package com.bit.hi.controller;

import java.util.List;

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
	public String soiFactoryList(Model model) {
		List<PostVo> postList=postService.getAllPostList();
		model.addAttribute("postList", postList);
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
}
