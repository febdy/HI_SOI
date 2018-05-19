package com.bit.hi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/interview")
public class VideoController {
	
	@RequestMapping(value="/uploadmode")
	public String uploadmode() throws Exception{
		
		return "interview/uploadmode";
	}
	
	@RequestMapping(value="/livemode")
	public String livemode() throws Exception{
		
		return "interview/livemode";
	}
}
