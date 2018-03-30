package com.bit.hi.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.CsVo;

@Repository
public class CsDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void csWrite(CsVo CsVo) {
		int result = sqlSession.insert("qna.wirteByTitleContent", CsVo);
		
	}

}
