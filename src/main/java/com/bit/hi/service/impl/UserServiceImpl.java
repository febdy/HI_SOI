package com.bit.hi.service.impl;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.UserDao;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public int join(UserVo userVo) throws Exception{
		if(Pattern.matches("^[가-힣a-zA-Z]+$", userVo.getUserName())) {
			if(userDao.selectUserForId(userVo.getUserId())==null & Pattern.matches("^[a-zA-Z0-9]{4,15}$", userVo.getUserId())) { //기존에 등록된 id인지 체크
				if(userDao.selectUserForNick(userVo.getUserNickname())==null & Pattern.matches("^[가-힣a-zA-Z0-9]{6,15}$", userVo.getUserNickname())) { //기존에 등록된 nick인지 체크
					if (Pattern.matches("^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$", userVo.getUserPwd())) {
						if (Pattern.matches("^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}$", userVo.getUserEmail())) {
							if (Pattern.matches("^\\d{3}-\\d{3,4}-\\d{4}$", userVo.getUserTel())) { //참이면 수행
								if (userVo.getUserAddr() != "") {
									return userDao.insertJoin(userVo);
								} else return 0;
							} else return 0;
						} else return 0;
					} else return 0;
				} else return 0;
			} else return 0;
		} else return 0;
	}
	
	@Override
	public UserVo login(String userId, String userPwd) throws Exception{
		System.out.println("service 진입");
		UserVo userVo=new UserVo();
		userVo.setUserId(userId);
		userVo.setUserPwd(userPwd);
		
		return userDao.selectListByIdPwd(userVo);
	}
	
	@Override
	public boolean apiIdChk(String userId) throws Exception{
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
	
	@Override
	public boolean apiNickChk(String userNickname) throws Exception{
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
