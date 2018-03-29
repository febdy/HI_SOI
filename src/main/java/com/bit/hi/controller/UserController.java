package com.bit.hi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
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
		userService.join(userVo);
		return "user/joinsuccess";
	}
	
	@RequestMapping(value="/loginform")
	public String login() {
		System.out.println("loginform 진입");

		return "user/loginform";
	}
	
	@RequestMapping(value="/login")
	public String login(@RequestParam("id") String userId, @RequestParam("password") String userPwd, HttpSession session) {
		System.out.println("login 진입");
		System.out.println(userId + "/" + userPwd);
		
		UserVo authUser=userService.login(userId, userPwd);
		
		System.out.println(authUser);
		
		session.setAttribute("authUser", authUser);
		return "redirect:/";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authUser");
		session.invalidate(); //모든 세션 닫기
		return "redirect:/";
	}
	
	
	
}
