package com.bit.hi.start;

import java.sql.Connection;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import oracle.jdbc.pool.OracleDataSource;

//db와 연결 제대로 되어 있는지, dataSource에 관한 테스트
@RunWith(SpringJUnit4ClassRunner.class) //Spring에 있는 JUnit을 이용하여 테스트(SpringJUnit4ClassRunner.class 를 가지고 DataSource 클래스를 테스트 하겠음.)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"}) //우리가 작성한 xml파일로 spring을 로딩해주겠음 
public class DataSource {

	@Inject //inject 어노테이션에 의해, 알아서 객체 생성하여, 주입해줌
	private OracleDataSource oracleDataSource;
	
	@Test //테스트 하게 될 메서드
	public void testConnection() throws Exception {
		try (Connection conn = oracleDataSource.getConnection()) {
			System.out.println(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	} //conn 자동 close 까지 완료
}
