package com.bit.hi.dao.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.PostVo;

@Repository
public class MainDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<PostVo> selectPopularVideoForMain() {
		return sqlSession.selectList("main.selectPopularVideoForMain");
	}
}
