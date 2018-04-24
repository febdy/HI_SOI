package com.bit.hi.mongo.vo;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="video_info")
public class MongoVo {
	
	private String videoOriginName;
	private String videoPath;
	private long videoSize;
	
	public String getVideoOriginName() {
		return videoOriginName;
	}
	public void setVideoOriginName(String videoOriginName) {
		this.videoOriginName = videoOriginName;
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
		return "MongoVo [videoOriginName=" + videoOriginName + ", videoPath=" + videoPath + ", videoSize=" + videoSize
				+ "]";
	}
	
}
