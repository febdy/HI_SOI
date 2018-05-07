package com.bit.hi.start;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//MyBatis 연결 테스트
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MybatisTest {

	@Inject
	private SqlSessionFactory sqlFactory;
	
	@Test
	public void testSqlFactory() {
		System.out.println(sqlFactory); //sqlSessionFactory가 제대로 생성되었는지확인.
	}
	
	//sqlSessionTemplate 에 sqlFactory 주입
	@Test
	public void sessionTest() throws Exception {
		try (SqlSession sqlSessionTemplate = sqlFactory.openSession()) {
			System.out.println(sqlSessionTemplate);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
