package com.bit.hi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.service.CsService;


@Controller
@RequestMapping("/cs")
public class CsController {
	
	@Autowired
	private CsService csService;
	
	@RequestMapping(value="/notice")	//공지사항
	public String notice() {
		
		return "cs/notice";
	}	
	
	@RequestMapping(value="/qna")	//cs 페이지
	public String qna() {
		
		return "cs/qna";
	}
	
	@RequestMapping(value="/help")		//도움말
	public String help() {
		
		return "cs/help";
	}
	
	@RequestMapping(value="/writeform")		//cs 글쓰기 폼
	public String csWriteform(Model mondel) {
		
		return "cs/qnawrite";
	}
	
	@RequestMapping(value="/write")		//cs 글쓰기
	public String csWrite(@ModelAttribute CsVo csVo) {
		csService.csWrite(csVo);
		return "redirect:/cs/qna";
	}
	

}
