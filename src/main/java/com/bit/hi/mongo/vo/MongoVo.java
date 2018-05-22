package com.bit.hi.mongo.vo;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "video_info")
public class MongoVo {

	private String videoNo;
	private String userId;
	private String videoOriginName;
	private String videoPath;
	private long videoSize;
	private String videoSaveName;
	private String videoThumnail;
	private Date videoDate; //최근 10개를 위해 변수 추가
	//밑에 5개 변수는 임의로 그래프 작성을 위해, 만든 변수임.
	private double avg;
	
	public String getVideoNo() {
		return videoNo;
	}
	
	public void setVideoNo(String videoNo) {
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
	
	public String getVideoSaveName() {
		return videoSaveName;
	}
	
	public void setVideoSaveName(String videoSaveName) {
		this.videoSaveName = videoSaveName;
	}
	
	public String getVideoThumnail() {
		return videoThumnail;
	}
	
	public void setVideoThumnail(String videoThumnail) {
		this.videoThumnail = videoThumnail;
	}
	
	public Date getVideoDate() {
		return videoDate;
	}
	
	public void setVideoDate(Date videoDate) {
		this.videoDate = videoDate;
	}
	
	public double getAvg() {
		return avg;
	}
	
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	@Override
	public String toString() {
		return "MongoVo [videoNo=" + videoNo + ", userId=" + userId + ", videoOriginName=" + videoOriginName
				+ ", videoPath=" + videoPath + ", videoSize=" + videoSize + ", videoSaveName=" + videoSaveName
				+ ", videoThumnail=" + videoThumnail + ", videoDate=" + videoDate + ", avg=" + avg + "]";
	}
  
}
