package com.bit.hi.domain.vo;

public class QnaVo {
	private int notiNo;
	private String notiTitle;
	private String notiContent;
	private String notiDate;
	private int notiHitCnt;
	private String userId;
	
	public QnaVo() {
	}

	public QnaVo(int notiNo, String notiTitle, String notiContent, String notiDate, int notiHitCnt, String userId) {
		this.notiNo = notiNo;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiDate = notiDate;
		this.notiHitCnt = notiHitCnt;
		this.userId = userId;
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

	@Override
	public String toString() {
		return "QnaVo [notiNo=" + notiNo + ", notiTitle=" + notiTitle + ", notiContent=" + notiContent + ", notiDate="
				+ notiDate + ", notiHitCnt=" + notiHitCnt + ", userId=" + userId + "]";
	}
	
}
