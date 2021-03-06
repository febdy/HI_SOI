package com.bit.hi.domain.vo;

public class ScrapVo {
	private int postNo;
	private String userId;
	private String scrapDate;
	private String postTitle;
	private int postSoiCnt;
	private int postCmtCnt;
	private int postHitCnt;
	private String writerId;
	private String postDate;
	private String videoThumnail;
	private boolean scrapX;
	
	public ScrapVo() {
	}

	public ScrapVo(int postNo, String userId, String scrapDate, String postTitle, int postSoiCnt, int postCmtCnt,
			int postHitCnt, String writerId, String postDate, String videoThumnail, boolean scrapX) {
		this.postNo = postNo;
		this.userId = userId;
		this.scrapDate = scrapDate;
		this.postTitle = postTitle;
		this.postSoiCnt = postSoiCnt;
		this.postCmtCnt = postCmtCnt;
		this.postHitCnt = postHitCnt;
		this.writerId = writerId;
		this.postDate = postDate;
		this.videoThumnail = videoThumnail;
		this.scrapX = scrapX;
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

	public String getScrapDate() {
		return scrapDate;
	}

	public void setScrapDate(String scrapDate) {
		this.scrapDate = scrapDate;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public int getPostSoiCnt() {
		return postSoiCnt;
	}

	public void setPostSoiCnt(int postSoiCnt) {
		this.postSoiCnt = postSoiCnt;
	}

	public int getPostCmtCnt() {
		return postCmtCnt;
	}

	public void setPostCmtCnt(int postCmtCnt) {
		this.postCmtCnt = postCmtCnt;
	}

	public int getPostHitCnt() {
		return postHitCnt;
	}

	public void setPostHitCnt(int postHitCnt) {
		this.postHitCnt = postHitCnt;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public String getVideoThumnail() {
		return videoThumnail;
	}

	public void setVideoThumnail(String videoThumnail) {
		this.videoThumnail = videoThumnail;
	}

	public boolean isScrapX() {
		return scrapX;
	}

	public void setScrapX(boolean scrapX) {
		this.scrapX = scrapX;
	}

	@Override
	public String toString() {
		return "ScrapVo [postNo=" + postNo + ", userId=" + userId + ", scrapDate=" + scrapDate + ", postTitle="
				+ postTitle + ", postSoiCnt=" + postSoiCnt + ", postCmtCnt=" + postCmtCnt + ", postHitCnt=" + postHitCnt
				+ ", writerId=" + writerId + ", postDate=" + postDate + ", videoThumnail=" + videoThumnail + ", scrapX="
				+ scrapX + "]";
	}

}
