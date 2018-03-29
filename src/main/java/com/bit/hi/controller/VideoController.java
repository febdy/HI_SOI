package com.bit.hi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/interview")
public class VideoController {

	@RequestMapping(value="/upload")
	public String upload() {
		
		return "interview/upload";
	}
	
	@RequestMapping(value="/live")
	public String live() {
		
		return "interview/live";
	}
}
