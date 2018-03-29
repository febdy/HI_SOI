package com.bit.hi.domain.vo;

public class VideoVo {
	private int videoNo;
	private String userId;
	private String videoOriginName;
	private String videoSaveName;
	private String videoExName;
	private String videoPath;
	private String videoSize;
	private String videoTime;
	private String videoDate;
	private String videoCorrectLine;
	
	public VideoVo() {
	}

	public VideoVo(int videoNo, String userId, String videoOriginName, String videoSaveName, String videoExName,
			String videoPath, String videoSize, String videoTime, String videoDate, String videoCorrectLine) {
		this.videoNo = videoNo;
		this.userId = userId;
		this.videoOriginName = videoOriginName;
		this.videoSaveName = videoSaveName;
		this.videoExName = videoExName;
		this.videoPath = videoPath;
		this.videoSize = videoSize;
		this.videoTime = videoTime;
		this.videoDate = videoDate;
		this.videoCorrectLine = videoCorrectLine;
	}

	public int getVideoNo() {
		return videoNo;
	}

	public void setVideoNo(int videoNo) {
		this.videoNo = videoNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public String getVideoSize() {
		return videoSize;
	}

	public void setVideoSize(String videoSize) {
		this.videoSize = videoSize;
	}

	public String getVideoTime() {
		return videoTime;
	}

	public void setVideoTime(String videoTime) {
		this.videoTime = videoTime;
	}

	public String getVideoDate() {
		return videoDate;
	}

	public void setVideoDate(String videoDate) {
		this.videoDate = videoDate;
	}

	public String getVideoCorrectLine() {
		return videoCorrectLine;
	}

	public void setVideoCorrectLine(String videoCorrectLine) {
		this.videoCorrectLine = videoCorrectLine;
	}

	@Override
	public String toString() {
		return "VideoVo [videoNo=" + videoNo + ", userId=" + userId + ", videoOriginName=" + videoOriginName
				+ ", videoSaveName=" + videoSaveName + ", videoExName=" + videoExName + ", videoPath=" + videoPath
				+ ", videoSize=" + videoSize + ", videoTime=" + videoTime + ", videoDate=" + videoDate
				+ ", videoCorrectLine=" + videoCorrectLine + "]";
	}
	
}
