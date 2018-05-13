package com.bit.hi.dao.main.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.main.MainDao;
import com.bit.hi.domain.vo.PostVo;

@Repository
public class MainDaoImpl implements MainDao {

	private static final String namespace="com.bit.hi.MainMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PostVo> selectPopularVideoForMain() throws Exception {
		return sqlSession.selectList(namespace+"selectPopularVideoForMain");
	}
}
