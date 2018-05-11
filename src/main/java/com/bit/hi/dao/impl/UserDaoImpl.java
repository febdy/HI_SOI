package com.bit.hi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.UserDao;
import com.bit.hi.domain.vo.UserVo;

@Repository
public class UserDaoImpl implements UserDao {

	private static final String namespace="com.bit.hi.UserMapper.";

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertJoin(UserVo userVo) {
		return sqlSession.insert(namespace+"insertJoin", userVo);
	}
	
	@Override
	public UserVo selectListByIdPwd(UserVo userVo) {
		System.out.println("dao 진입");
		return sqlSession.selectOne(namespace+"getListByIdPwd", userVo);
	}
	
	@Override
	public UserVo selectUserForId(String userId) {
		return sqlSession.selectOne(namespace+"selectUserForId", userId);
	}
	
	@Override
	public UserVo selectUserForNick(String userNickname) {
		return sqlSession.selectOne(namespace+"selectUserForNick", userNickname);
	}
}
