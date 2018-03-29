package com.bit.hi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.UserDao;
import com.bit.hi.domain.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public int join(UserVo userVo) {
		userDao.insertJoin(userVo);
		return 1;
	}
	
	public UserVo login(String userId, String userPwd) {
		System.out.println("service 진입");
		UserVo userVo=new UserVo();
		userVo.setUserId(userId);
		userVo.setUserPwd(userPwd);
		
		return userDao.selectListByIdPwd(userVo);
	}
}
