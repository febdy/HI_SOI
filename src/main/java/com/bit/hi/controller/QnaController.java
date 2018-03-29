package com.bit.hi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@RequestMapping(value="/notice")
	public String notice() {
		
		return "qna/notice";
	}
	
	@RequestMapping(value="/qna")
	public String qna() {
		
		return "qna/qna";
	}
	
	@RequestMapping(value="/help")
	public String help() {
		
		return "qna/help";
	}
}
