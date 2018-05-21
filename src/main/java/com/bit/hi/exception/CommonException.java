package com.bit.hi.exception;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice("com.bit.hi.controller")
public class CommonException {

	private static final Logger logger = LoggerFactory.getLogger(CommonException.class);
	
	@ExceptionHandler(Exception.class)
	private ModelAndView errMAV(HttpServletRequest req, Exception e) {
		logger.error("req" + req.getRequestURL() + "raised" + e.toString());
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("exception", e);
		mav.addObject("url", req.getRequestURL());
		mav.setViewName("/err_exception");
		
		return mav;
	}
}
