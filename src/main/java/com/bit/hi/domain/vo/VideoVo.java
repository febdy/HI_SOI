package com.bit.hi.domain.vo;

public class VideoVo {
	private int rn;
	private int videoNo;
	private String userId;
	private String videoOriginName;
	private String videoSaveName;
	private String videoExName;
	private String videoPath;
	private long videoSize;
	private String videoDate;
	private String videoThumnail;
	private String videoCorrectLine;
	private String videoDelete;
	private String saveDir;
	private int total_grade;
	
	public VideoVo() {};
	
	public VideoVo(int rn, int videoNo, String userId, String videoOriginName, String videoSaveName, String videoExName,
			String videoPath, long videoSize, String videoDate, String videoThumnail, String videoCorrectLine,
			String videoDelete, String saveDir, int total_grade) {
		this.rn = rn;
		this.videoNo = videoNo;
		this.userId = userId;
		this.videoOriginName = videoOriginName;
		this.videoSaveName = videoSaveName;
		this.videoExName = videoExName;
		this.videoPath = videoPath;
		this.videoSize = videoSize;
		this.videoDate = videoDate;
		this.videoThumnail = videoThumnail;
		this.videoCorrectLine = videoCorrectLine;
		this.videoDelete = videoDelete;
		this.saveDir = saveDir;
		this.total_grade = total_grade;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
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

	public String getVideoDelete() {
		return videoDelete;
	}

	public void setVideoDelete(String videoDelete) {
		this.videoDelete = videoDelete;
	}

	public String getSaveDir() {
		return saveDir;
	}

	public void setSaveDir(String saveDir) {
		this.saveDir = saveDir;
	}

	public int getTotal_grade() {
		return total_grade;
	}

	public void setTotal_grade(int total_grade) {
		this.total_grade = total_grade;
	}

	@Override
	public String toString() {
		return "VideoVo [rn=" + rn + ", videoNo=" + videoNo + ", userId=" + userId + ", videoOriginName="
				+ videoOriginName + ", videoSaveName=" + videoSaveName + ", videoExName=" + videoExName + ", videoPath="
				+ videoPath + ", videoSize=" + videoSize + ", videoDate=" + videoDate + ", videoThumnail="
				+ videoThumnail + ", videoCorrectLine=" + videoCorrectLine + ", videoDelete=" + videoDelete
				+ ", saveDir=" + saveDir + ", total_grade=" + total_grade + "]";
	}
	
	
	
	

}
