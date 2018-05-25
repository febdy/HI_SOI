package com.bit.hi.domain.vo;

public class LikeVo {
	private int postNo;
	private String userId;
	private String likeDate;
	private boolean likeX;
	
	public LikeVo() {};
	
	public LikeVo(int postNo, String userId, String likeDate, boolean likeX) {
		this.postNo = postNo;
		this.userId = userId;
		this.likeDate = likeDate;
		this.likeX = likeX;
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

	public String getLikeDate() {
		return likeDate;
	}

	public void setLikeDate(String likeDate) {
		this.likeDate = likeDate;
	}

	public boolean isLikeX() {
		return likeX;
	}

	public void setLikeX(boolean likeX) {
		this.likeX = likeX;
	}

	@Override
	public String toString() {
		return "LikeVo [postNo=" + postNo + ", userId=" + userId + ", likeDate=" + likeDate + ", likeX=" + likeX + "]";
	}
	
}
