package com.bit.hi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserLogoutInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, 
			ModelAndView modelAndView) throws Exception {
		if("HTTP/1.1".equals(request.getProtocol())) {
			response.setHeader ("Cache-Control", "no-cache, no-store, must-revalidate");
		} else {
			response.setHeader ("Pragma", "no-cache");
		}
		response.setDateHeader ("Expires", 0);
	}

}
