package com.bit.hi.dao;

import com.bit.hi.domain.vo.UserVo;

public interface UserDao {
	
	public int insertJoin(UserVo userVo) throws Exception;
	
	public UserVo selectListByIdPwd(UserVo userVo) throws Exception;
	
	public UserVo selectUserForId(String userId) throws Exception;
	
	public UserVo selectUserForNick(String userNickname) throws Exception;
}
