package com.bit.hi.domain.vo;

public class PostVo {
	private int rn;
	private int postNo;
	private String writerId;
	private int videoNo;
	private String postTitle;
	private String postContent;
	private String postDate;
	private int postSoiCnt;
	private int postCmtCnt;
	private int postHitCnt;
	private String postHideFace;
	private String postSharable;
	private String postAnalResult;
	private String videoOriginName;
	private String videoSaveName;
	private String videoExName;
	private String videoPath;
	private long videoSize;
	private String videoDate;
	private String videoThumnail;
	private String videoCorrectLine;
	private String userId;
	private String userNickname;
	
	public PostVo() {
	}

	public PostVo(int rn, int postNo, String writerId, int videoNo, String postTitle, String postContent,
			String postDate, int postSoiCnt, int postCmtCnt, int postHitCnt, String postHideFace, String postSharable,
			String postAnalResult, String videoOriginName, String videoSaveName, String videoExName, String videoPath,
			long videoSize, String videoDate, String videoThumnail, String videoCorrectLine, String userId,
			String userNickname) {
		this.rn = rn;
		this.postNo = postNo;
		this.writerId = writerId;
		this.videoNo = videoNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postDate = postDate;
		this.postSoiCnt = postSoiCnt;
		this.postCmtCnt = postCmtCnt;
		this.postHitCnt = postHitCnt;
		this.postHideFace = postHideFace;
		this.postSharable = postSharable;
		this.postAnalResult = postAnalResult;
		this.videoOriginName = videoOriginName;
		this.videoSaveName = videoSaveName;
		this.videoExName = videoExName;
		this.videoPath = videoPath;
		this.videoSize = videoSize;
		this.videoDate = videoDate;
		this.videoThumnail = videoThumnail;
		this.videoCorrectLine = videoCorrectLine;
		this.userId = userId;
		this.userNickname = userNickname;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public int getVideoNo() {
		return videoNo;
	}

	public void setVideoNo(int videoNo) {
		this.videoNo = videoNo;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
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

	public String getPostHideFace() {
		return postHideFace;
	}

	public void setPostHideFace(String postHideFace) {
		this.postHideFace = postHideFace;
	}

	public String getPostSharable() {
		return postSharable;
	}

	public void setPostSharable(String postSharable) {
		this.postSharable = postSharable;
	}

	public String getPostAnalResult() {
		return postAnalResult;
	}

	public void setPostAnalResult(String postAnalResult) {
		this.postAnalResult = postAnalResult;
	}

	public String getVideoOriginName() {
		return videoOriginName;
	}

	public void setVideoOriginName(String videoOriginName) {
		this.videoOriginName = videoOriginName;
	}

	public String getVideoSaveName() {
		return videoSaveName;
	}

	public void setVideoSaveName(String videoSaveName) {
		this.videoSaveName = videoSaveName;
	}

	public String getVideoExName() {
		return videoExName;
	}

	public void setVideoExName(String videoExName) {
		this.videoExName = videoExName;
	}

	public String getVideoPath() {
		return videoPath;
	}

	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}

	public long getVideoSize() {
		return videoSize;
	}

	public void setVideoSize(long videoSize) {
		this.videoSize = videoSize;
	}

	public String getVideoDate() {
		return videoDate;
	}

	public void setVideoDate(String videoDate) {
		this.videoDate = videoDate;
	}

	public String getVideoThumnail() {
		return videoThumnail;
	}

	public void setVideoThumnail(String videoThumnail) {
		this.videoThumnail = videoThumnail;
	}

	public String getVideoCorrectLine() {
		return videoCorrectLine;
	}

	public void setVideoCorrectLine(String videoCorrectLine) {
		this.videoCorrectLine = videoCorrectLine;
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

	@Override
	public String toString() {
		return "PostVo [rn=" + rn + ", postNo=" + postNo + ", writerId=" + writerId + ", videoNo=" + videoNo
				+ ", postTitle=" + postTitle + ", postContent=" + postContent + ", postDate=" + postDate
				+ ", postSoiCnt=" + postSoiCnt + ", postCmtCnt=" + postCmtCnt + ", postHitCnt=" + postHitCnt
				+ ", postHideFace=" + postHideFace + ", postSharable=" + postSharable + ", postAnalResult="
				+ postAnalResult + ", videoOriginName=" + videoOriginName + ", videoSaveName=" + videoSaveName
				+ ", videoExName=" + videoExName + ", videoPath=" + videoPath + ", videoSize=" + videoSize
				+ ", videoDate=" + videoDate + ", videoThumnail=" + videoThumnail + ", videoCorrectLine="
				+ videoCorrectLine + ", userId=" + userId + ", userNickname=" + userNickname + "]";
	}
	
}
