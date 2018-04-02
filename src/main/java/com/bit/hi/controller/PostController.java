package com.bit.hi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class PostController {

	@RequestMapping(value="/soifactorylist")
	public String notice() {
		
		return "soifactory/fac-main";
	}
}
