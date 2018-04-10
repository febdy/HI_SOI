package com.bit.hi.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int insertJoin(UserVo userVo) {
		return sqlSession.insert("user.insertJoin", userVo);
	}
	
	public UserVo selectListByIdPwd(UserVo userVo) {
		System.out.println("dao 진입");
		return sqlSession.selectOne("user.getListByIdPwd", userVo);
	}
	
	public UserVo selectUserForId(String userId) {
		return sqlSession.selectOne("user.selectUserForId", userId);
	}
	
	public UserVo selectUserForNick(String userNickname) {
		return sqlSession.selectOne("user.selectUserForNick", userNickname);
	}
}
