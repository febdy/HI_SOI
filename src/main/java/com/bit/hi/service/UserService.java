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
		if(userDao.selectUserForId(userVo.getUserId())==null) {
			if(userDao.selectUserForNick(userVo.getUserNickname())==null) {
				//길이 뿐만 아니라, 특수문자, 영어 대소문자 포함여부 조건 걸어주어야 함.
				if ((userVo.getUserPwd().length()>7) && (userVo.getUserPwd().length()<21)) {
					return userDao.insertJoin(userVo);
				} else return 0;
			} else return 0;
		} else return 0;
	}
	
	public UserVo login(String userId, String userPwd) {
		System.out.println("service 진입");
		UserVo userVo=new UserVo();
		userVo.setUserId(userId);
		userVo.setUserPwd(userPwd);
		
		return userDao.selectListByIdPwd(userVo);
	}
	
	public boolean apiIdChk(String userId) {
		boolean result;
		UserVo userVo = new UserVo();
		userVo = userDao.selectUserForId(userId);
		System.out.println(userVo);
		if (userVo != null) {
			result = false;
		} else {
			result = true;
		}
		return result;
	}
	
	public boolean apiNickChk(String userNickname) {
		boolean result;
		UserVo userVo = new UserVo();
		userVo = userDao.selectUserForNick(userNickname);
		System.out.println(userVo);
		if (userVo != null) {
			result = false;
		} else {
			result = true;
		}
		return result;
	}
}
