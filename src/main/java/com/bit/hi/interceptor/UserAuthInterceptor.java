package com.bit.hi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserAuthInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(request.getSession().getAttribute("authUser") == null){
			//계속 alert창 안나오면 삭제
	
	        /*PrintWriter out = response.getWriter();
	        out.println("<script>alert('로그인 해주세요.'); </script>");
	        out.flush();
	        out.close();*/
	        response.sendRedirect("/hi");

			return false;
		}
		return true;
	}
	

/*	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		ModelMap modelMap = modelAndView.getModelMap();
		Object loginVO = modelMap.get("authUser");
		if (loginVO == null) {
			modelMap.put("mypagemsg", "Failed");
		}
	}*/
}
