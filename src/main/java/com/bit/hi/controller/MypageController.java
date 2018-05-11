package com.bit.hi.controller;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("/history")
	public String history() throws Exception{
		return "mypage/history";
	}
	
	//내가 진단받은 영상관리
	@RequestMapping("/videoclip")
	public String videoClip(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> myVideoMap=mypageService.clipGetList(authUser.getUserId(), crtPage);
		System.out.println(myVideoMap);
		model.addAttribute("myVideoMap", myVideoMap);
		return "mypage/videoclip";
	}
	
	//영상관리 세부내용
	@RequestMapping("/videoclip/detail")
	public String videoClipDetail(@RequestParam("videoNo") int videoNo, Model model) throws Exception{
		
		VideoVo videoVo=mypageService.getEachVideoAnalyze(videoNo);
		model.addAttribute("videoVo", videoVo);
		return "mypage/videodetail";
	}
	
	//내 댓글
	@RequestMapping("/collect/comment")
	public String collectComment(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> commentMap= mypageService.getCollectCommentList(authUser.getUserId(), crtPage);
		System.out.println(commentMap);
		model.addAttribute("commentMap", commentMap);
		return "mypage/collectcomment";
	}
	
	//내가 올린 영상
	@RequestMapping("/collect/video")
	public String collectVideo(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> videoMap= mypageService.getCollectVideoList(authUser.getUserId(), crtPage);
		model.addAttribute("videoMap", videoMap);
		return "mypage/collectvideo";
	}
	
	//스크랩
	@RequestMapping("/collect/scrap")
	public String collectScrap(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, HttpSession session, Model model) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		Map<String, Object> scrapMap= mypageService.getCollectScrapList(authUser.getUserId(), crtPage);
		model.addAttribute("scrapMap", scrapMap);
		return "mypage/collectscrap";
	}
	
	@RequestMapping("/beforemodify")
	public String beforeModify() throws Exception{
		
		return "mypage/beforemodify";
	}
	
	@RequestMapping("/modifyinfo")
	public String modifyInfo(HttpSession session, @RequestParam("userPwd") String userPwd, Model model) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		if(authUser.getUserPwd().equals(userPwd)) {
			UserVo userInfo=mypageService.getUserInfo(authUser.getUserId());
			model.addAttribute("userVo", userInfo);
			return "mypage/modifyInfo";
		} else {
			return "redirect:/mypage/beforemodify";
		}
	}
	
	//수정시 비밀번호 입력 받았을 때만 수정되도록 팝업 띄우기, 수정 후 세션 다시 입력시키기
	@RequestMapping("/modifyComplete")
	public void modifyComplete(@ModelAttribute UserVo userVo, HttpServletResponse response, HttpSession session) throws Exception {
		System.out.println(userVo);
        
		//String url="";
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
		if(mypageService.modifyComplete(userVo,session)==1) {
			//url="redirect:/";
			session.removeAttribute("authUser");
			session.invalidate();
			out.println("<script>alert('회원정보 수정에 성공하였습니다. 재로그인 해주세요.'); </script>");
			out.println("<script> location.href='../../hi' </script>");
		} else {
			
			out.println("<script>alert('회원정보 수정에 실패하였습니다.'); history.go(-1);</script>");
            out.flush();
		}
		
		//return url;
	}
	
}
