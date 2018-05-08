package com.bit.hi.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	
	private static final Logger logger = LoggerFactory.getLogger(PostController.class);
	
	@Autowired
	private PostService postService;

	@RequestMapping(value="/soifactorylist")
	public String soiFactoryList(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, 
			@RequestParam(value="kwd", required=false, defaultValue="") String kwd, Model model) {
		Map<String, Object> bMap=postService.getAllPostList(crtPage, kwd);
		logger.info("소이팩토리 영상 정보 : "+ bMap.values().toString());
		model.addAttribute("bindMap", bMap);
		return "soifactory/fac-main";
	}
	
	@RequestMapping(value="/soiread/{postNo}")
	public String soiRead(Model model, @PathVariable int postNo) {
		PostVo postVo=postService.getEachPost(postNo);
		model.addAttribute("postVo", postVo);
		model.addAttribute("ctrl","\r\n");
		return "soifactory/soiread";
	}
	
	@RequestMapping(value="/soiwriteform")
	public String soiWriteForm(HttpSession session) {
		UserVo authUser= (UserVo)session.getAttribute("authUser");
		
		String url;
		if (authUser==null) {
			url="redirect:/post/soifactorylist";
		} else {
			url="soifactory/soiwriteform";
		}
		return url;
	}
	
	@RequestMapping(value="/soiwrite")
	public String soiWrite(@ModelAttribute PostVo postVo, HttpSession session, @RequestParam(value="postHideFace", required=false, defaultValue="N") String postHideFace,
			@RequestParam(value="postSharable", required=false, defaultValue="N") String postSharable
	) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		postVo.setWriterId(authUser.getUserId()); //유저 아이디
		postVo.setPostHideFace(postHideFace);
		postVo.setPostSharable(postSharable);
		logger.info("소이팩토리 작성된 글 정보 : " + postVo);
		postService.writePost(postVo); //ioi로 videoNo를 가져와서, 일단 post에 값 insert해볼 것임.
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
	
	@RequestMapping(value="/soimodifyform")
	public String soiModifyForm(@RequestParam("postNo") int postNo, @RequestParam("writerId") String writerId, Model model, HttpSession session) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		
		String url;
		if (authUser.getUserId().equals(writerId)) {
			PostVo postVo=postService.getEachPostForModify(postNo);
			model.addAttribute("postVo", postVo);
			model.addAttribute("ctrl","\r\n");
			url="soifactory/soimodifyform";
		} else {
			url="redirect:/post/soifactorylist";
		}
		return url;
	}
	
	@RequestMapping(value="/soimodify")
	public String soiModify(@ModelAttribute PostVo postVo, HttpSession session) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		
		String url;
		if (authUser.getUserId().equals(postVo.getWriterId())) {
			postService.updateEachPostForModify(postVo);
			int postNo=postVo.getPostNo();
			url="redirect:/post/soiread/"+postNo;
		} else {
			url="redirect:/post/soifactorylist";
		}
		return url;
	}

}
