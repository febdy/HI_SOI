package com.bit.hi.controller.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.service.main.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model) throws Exception {
		System.out.println("main 진입");
		List<PostVo> mainList=mainService.getPopularVideoForMain();
		model.addAttribute("mainList", mainList);
		
		return "main/main";
	}
	
}
