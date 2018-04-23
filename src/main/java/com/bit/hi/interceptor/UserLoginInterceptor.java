package com.bit.hi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserLoginInterceptor extends HandlerInterceptorAdapter {
	Logger logger = LoggerFactory.getLogger(UserLoginInterceptor.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		ModelMap modelMap = modelAndView.getModelMap();
		Object loginVO = modelMap.get("authUser");
		if (loginVO != null) {
			request.getSession().setAttribute("authUser", loginVO);
		} else {
			modelMap.put("loginmsg", "Login Failed");
		}
	}
}
