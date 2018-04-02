package com.bit.hi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.CsVo;

@Repository
public class CsDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<CsVo> selectList(int startRnum, int endRnum, String kwd) {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		mapCri.put("kwd", kwd);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList("cs.selectPage", mapCri); //입력값 없이 출력만 하는 select
	}
	
	public int selectTotalCount(String kwd) {
		return sqlSession.selectOne("cs.totalCount", kwd);
	}
}
