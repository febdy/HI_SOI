package com.bit.hi.domain.vo;

public class CommentVo {
	private int rn;
	private int cmtNo;
	private int postNo;
	private String userId;
	private String cmtContent;
	private String cmtDate;
	private String postTitle;
	private String writerId;
	private String postCmtCnt;
	private String postHitCnt;
	private String postSoiCnt;
	private String userNickname;
	
	public CommentVo() {
	}

	public CommentVo(int rn, int cmtNo, int postNo, String userId, String cmtContent, String cmtDate, String postTitle,
			String writerId, String postCmtCnt, String postHitCnt, String postSoiCnt, String userNickname) {
		this.rn = rn;
		this.cmtNo = cmtNo;
		this.postNo = postNo;
		this.userId = userId;
		this.cmtContent = cmtContent;
		this.cmtDate = cmtDate;
		this.postTitle = postTitle;
		this.writerId = writerId;
		this.postCmtCnt = postCmtCnt;
		this.postHitCnt = postHitCnt;
		this.postSoiCnt = postSoiCnt;
		this.userNickname = userNickname;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getCmtNo() {
		return cmtNo;
	}

	public void setCmtNo(int cmtNo) {
		this.cmtNo = cmtNo;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCmtContent() {
		return cmtContent;
	}

	public void setCmtContent(String cmtContent) {
		this.cmtContent = cmtContent;
	}

	public String getCmtDate() {
		return cmtDate;
	}

	public void setCmtDate(String cmtDate) {
		this.cmtDate = cmtDate;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getPostCmtCnt() {
		return postCmtCnt;
	}

	public void setPostCmtCnt(String postCmtCnt) {
		this.postCmtCnt = postCmtCnt;
	}

	public String getPostHitCnt() {
		return postHitCnt;
	}

	public void setPostHitCnt(String postHitCnt) {
		this.postHitCnt = postHitCnt;
	}

	public String getPostSoiCnt() {
		return postSoiCnt;
	}

	public void setPostSoiCnt(String postSoiCnt) {
		this.postSoiCnt = postSoiCnt;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	@Override
	public String toString() {
		return "CommentVo [rn=" + rn + ", cmtNo=" + cmtNo + ", postNo=" + postNo + ", userId=" + userId
				+ ", cmtContent=" + cmtContent + ", cmtDate=" + cmtDate + ", postTitle=" + postTitle + ", writerId="
				+ writerId + ", postCmtCnt=" + postCmtCnt + ", postHitCnt=" + postHitCnt + ", postSoiCnt=" + postSoiCnt
				+ ", userNickname=" + userNickname + "]";
	}
	
}
