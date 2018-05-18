package com.bit.hi.mongo.vo;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "video_info")
public class MongoVo {

	private int videoNo;
	private String userId;
	private String videoSaveName;
	private String videoPath;
	private long videoSize;

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

	public String getVideoSaveName() {
		return videoSaveName;
	}

	public void setVideoSaveName(String videoSaveName) {
		this.videoSaveName = videoSaveName;
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

	@Override
	public String toString() {
		return "MongoVo [videoOriginName=" + videoSaveName + ", videoPath=" + videoPath + ", videoSize=" + videoSize
				+ "]";
	}

}
