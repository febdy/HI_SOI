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
	
	@RequestMapping(value="/notice")	//��������
	public String notice() {
		
		return "cs/notice";
	}	
	
	@RequestMapping(value="/qna")	//cs ������
	public String qna() {
		
		return "cs/qna";
	}
	
	@RequestMapping(value="/help")		//����
	public String help() {
		
		return "cs/help";
	}
	
	@RequestMapping(value="/writeform")		//cs �۾��� ��
	public String csWriteform(Model mondel) {
		
		return "cs/qnawrite";
	}
	
	@RequestMapping(value="/write")		//cs �۾���
	public String csWrite(@ModelAttribute CsVo csVo) {
		csService.csWrite(csVo);
		return "redirect:/cs/qna";
	}
	

}
