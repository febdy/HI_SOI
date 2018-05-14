package com.bit.hi.domain.vo;

public class QnaVo {
	private int rn;
	private int qnaNo;
	private String qnaTitle;
	private String qnaContent;
	private String regDate;
	private String userId;
	private int qnaHitCnt;
	private String userNickname;
	
	
	public QnaVo() {
	}


	public QnaVo(int rn, int qnaNo, String qnaTitle, String qnaContent, String regDate, String userId, int qnaHitCnt,
			String userNickname) {
		this.rn = rn;
		this.qnaNo = qnaNo;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.regDate = regDate;
		this.userId = userId;
		this.qnaHitCnt = qnaHitCnt;
		this.userNickname = userNickname;
	}


	public int getRn() {
		return rn;
	}


	public void setRn(int rn) {
		this.rn = rn;
	}


	public int getQnaNo() {
		return qnaNo;
	}


	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}


	public String getQnaTitle() {
		return qnaTitle;
	}


	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}


	public String getQnaContent() {
		return qnaContent;
	}


	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public int getQnaHitCnt() {
		return qnaHitCnt;
	}


	public void setQnaHitCnt(int qnaHitCnt) {
		this.qnaHitCnt = qnaHitCnt;
	}


	public String getUserNickname() {
		return userNickname;
	}


	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}


	@Override
	public String toString() {
		return "QnaVo [rn=" + rn + ", qnaNo=" + qnaNo + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", regDate=" + regDate + ", userId=" + userId + ", qnaHitCnt=" + qnaHitCnt + ", userNickname="
				+ userNickname + "]";
	}
	
	
}
