package com.bit.hi.mongo.vo;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="video_info")
public class MongoVo {
	
	private String videoNo;
	private String videoOriginName;
	private String videoPath;
	private long videoSize;
	private String videoSaveName;
	private String videoThumnail;
	//밑에 5개 변수는 임의로 그래프 작성을 위해, 만든 변수임.
	private int math;
	private int korean;
	private int english;
	private int science;
	private double avg;
	
	public String getVideoNo() {
		return videoNo;
	}
	public void setVideoNo(String videoNo) {
		this.videoNo = videoNo;
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
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getKorean() {
		return korean;
	}
	public void setKorean(int korean) {
		this.korean = korean;
	}
	public int getEnglish() {
		return english;
	}
	public void setEnglish(int english) {
		this.english = english;
	}
	public int getScience() {
		return science;
	}
	public void setScience(int science) {
		this.science = science;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	@Override
	public String toString() {
		return "MongoVo [videoNo=" + videoNo + ", videoOriginName=" + videoOriginName + ", videoPath=" + videoPath
				+ ", videoSize=" + videoSize + ", videoSaveName=" + videoSaveName + ", videoThumnail=" + videoThumnail
				+ ", math=" + math + ", korean=" + korean + ", english=" + english + ", science=" + science + ", avg="
				+ avg + "]";
	}

	
}
