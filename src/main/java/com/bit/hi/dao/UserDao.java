package com.bit.hi.dao;

import com.bit.hi.domain.vo.UserVo;

public interface UserDao {
	
	public int insertJoin(UserVo userVo);
	
	public UserVo selectListByIdPwd(UserVo userVo);
	
	public UserVo selectUserForId(String userId);
	
	public UserVo selectUserForNick(String userNickname);
}
