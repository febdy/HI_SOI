package com.bit.hi.domain.vo;

public class CsVo {
	private int rn;
	private int notiNo;
	private String notiTitle;
	private String notiContent;
	private String notiDate;
	private int notiHitCnt;
	private String userId;
	private String userNickname;
	private String userLevel;
	
	public CsVo() {
	}

	public CsVo(int rn, int notiNo, String notiTitle, String notiContent, String notiDate, int notiHitCnt,
			String userId, String userNickname, String userLevel) {
		super();
		this.rn = rn;
		this.notiNo = notiNo;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiDate = notiDate;
		this.notiHitCnt = notiHitCnt;
		this.userId = userId;
		this.userNickname = userNickname;
		this.userLevel = userLevel;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getNotiNo() {
		return notiNo;
	}

	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
	}

	public String getNotiTitle() {
		return notiTitle;
	}

	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}

	public String getNotiContent() {
		return notiContent;
	}

	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}

	public String getNotiDate() {
		return notiDate;
	}

	public void setNotiDate(String notiDate) {
		this.notiDate = notiDate;
	}

	public int getNotiHitCnt() {
		return notiHitCnt;
	}

	public void setNotiHitCnt(int notiHitCnt) {
		this.notiHitCnt = notiHitCnt;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	@Override
	public String toString() {
		return "CsVo [rn=" + rn + ", notiNo=" + notiNo + ", notiTitle=" + notiTitle + ", notiContent=" + notiContent
				+ ", notiDate=" + notiDate + ", notiHitCnt=" + notiHitCnt + ", userId=" + userId + ", userNickname="
				+ userNickname + ", userLevel=" + userLevel + "]";
	}
	
}
