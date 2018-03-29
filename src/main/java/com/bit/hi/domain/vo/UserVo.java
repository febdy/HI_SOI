package com.bit.hi.domain.vo;

public class UserVo {
	private String userId;
	private String userName;
	private String userEmail;
	private String userAddr;
	private String userTel;
	private String userPwd;
	private String userNickname;
	private String userLevel;
	private String regDate;
	
	public UserVo() {
	}

	public UserVo(String userId, String userName, String userEmail, String userAddr, String userTel, String userPwd,
			String userNickname, String userLevel, String regDate) {
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userTel = userTel;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userLevel = userLevel;
		this.regDate = regDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "UserVo [userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userAddr="
				+ userAddr + ", userTel=" + userTel + ", userPwd=" + userPwd + ", userNickname=" + userNickname
				+ ", userLevel=" + userLevel + ", regDate=" + regDate + "]";
	}
	
}
