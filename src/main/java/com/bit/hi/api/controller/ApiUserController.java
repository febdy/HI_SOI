package com.bit.hi.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.hi.service.UserService;

@Controller
@RequestMapping("user")
public class ApiUserController {
	
	@Autowired
	private UserService userService;
	
	/*@ResponseBody
	@RequestMapping(value="/api/login")
	public UserVo apiLogin(@RequestBody UserVo userVo) {
		System.out.println("login 진입");
		System.out.println(userVo);
		return userVo;
	}
	
	@ResponseBody
	@RequestMapping(value="/api/loginSelectList")
	public UserVo apiLoginSelectList(@RequestBody UserVo userVo) {
		System.out.println("loginSelectList 진입");
		System.out.println(userVo);
		userService.login(userVo);
		return userVo;
	}*/
	
	@ResponseBody
	@RequestMapping(value="/api/idchk")
	public boolean apiIdChk(@RequestParam("id") String userId) throws Exception{
		System.out.println("idChk 진입");
		System.out.println(userId);
		return userService.apiIdChk(userId);
	}
	
	@ResponseBody
	@RequestMapping(value="/api/nickchk")
	public boolean apiNickChk(@RequestParam("nick") String userNickname) throws Exception{
		System.out.println("idChk 진입");
		System.out.println(userNickname);
		return userService.apiNickChk(userNickname);
	}
}
