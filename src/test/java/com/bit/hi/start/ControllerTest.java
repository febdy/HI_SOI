package com.bit.hi.start;

import javax.inject.Inject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

//WAS 없이 Controller 연결 테스트 하기
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration //Spring MVC 테스트 하는데 있어서, 필요한 어노테이션(기존 테스트와 다른 점)
@ContextConfiguration(locations= {"file:/src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ControllerTest {
	private static final Logger logger=LoggerFactory.getLogger(ControllerTest.class);
	
	@Inject
	private WebApplicationContext webAppCtx; //가상 DispatcherServlet
	
	private MockMvc mockMvc; //가상으로 브라우저의 요청과 응답을 하는 객체를 의미.
	
	@Before //테스트 실행 전에 매번 먼저 생성 되도록 함.
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.webAppCtx).build();
		logger.info("setup() 호출.....");
	}
	
	@Test
	public void testController() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/controller")); //post방식, get방식 사용 가능.
	}
	
	//WAS를 실행하지 않고, Controller를 테스트하기 위해선, servlet 버전을 맞춰줘야 함.
}
