package com.bit.hi.api.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class ApiMypageController {

	@Autowired
	private MypageService mypageService;
	
	@ResponseBody
	@RequestMapping("/api/nickchkformodify")
	public boolean apiNickChkForModify(HttpSession session, @RequestParam("nick") String userNickname) {
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		UserVo userVo=new UserVo();
		userVo.setUserNickname(authUser.getUserNickname());
		userVo.setUserNicknameAfter(userNickname);
		return mypageService.nickChkForModify(userVo);
	}
}
