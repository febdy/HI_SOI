package com.bit.hi.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice("com.bit.hi.controller")
public class CommonException {

	private static final Logger logger = LoggerFactory.getLogger(CommonException.class);
	
	@ExceptionHandler(Exception.class)
	private ModelAndView errMAV(Exception e) {
		logger.info(e.toString());
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/err_exception");
		mav.addObject("exception", e);
		
		return mav;
	}
}
