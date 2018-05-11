package com.bit.hi.service;

import com.bit.hi.domain.vo.UserVo;

public interface UserService {
	public int join(UserVo userVo) throws Exception;
	
	public UserVo login(String userId, String userPwd) throws Exception;
	
	public boolean apiIdChk(String userId) throws Exception;
	
	public boolean apiNickChk(String userNickname)  throws Exception;
}
