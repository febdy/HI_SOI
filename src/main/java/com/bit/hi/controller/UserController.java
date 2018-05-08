package com.bit.hi.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;

	@RequestMapping(value="/joinform", method=RequestMethod.GET)
	public String join() {
		System.out.println("joinform 진입");
		
		return "user/joinform";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(@ModelAttribute UserVo userVo) {

		System.out.println("join 진입");
		if (userService.join(userVo)==0) {
			return "user/joinfail";
		} else {
			return "user/joinsuccess";
		}
	}
	
	@RequestMapping(value="/loginform")
	public String login() {
		System.out.println("loginform 진입");

		return "user/loginform";
	}
	
	@RequestMapping(value="/login")
	public String login(@RequestParam("id") String userId, @RequestParam("password") String userPwd, Model model) {
		System.out.println("login 진입");
		UserVo userVo=new UserVo();
		
		userVo.setUserId(userId);
		userVo.setUserPwd(userPwd);
		
		logger.info(userVo.toString());
		
		UserVo authUser=userService.login(userId, userPwd);
		
		model.addAttribute("authUser", authUser);
		return "redirect:/";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authUser");
		session.invalidate(); //모든 세션 닫기
		return "redirect:/";
	}
	
}
