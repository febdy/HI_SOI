package com.bit.hi.mongo.vo;

import java.util.Date;
import java.util.List;

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
	private Date date; //최근 10개를 위해 변수 추가
	private String realDate;
	//밑에 5개 변수는 임의로 그래프 작성을 위해, 만든 변수임.
	private double avg;
	private List<Integer> face_move_cnt_per_5sec; //얼굴 움직임(5초 단위)
	private List<Integer> eye_blink_cnt_per_5sec; //눈 움직임(5초 단위)
	private int total_grade; //총 점수 (계산식 : 100 - ((얼굴횟수+눈횟수) x 2))
	
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
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getRealDate() {
		return realDate;
	}
	
	public void setRealDate(String realDate) {
		this.realDate = realDate;
	}
	
	public double getAvg() {
		return avg;
	}
	
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	public List<Integer> getFace_move_cnt_per_5sec() {
		return face_move_cnt_per_5sec;
	}
	
	public void setFace_move_cnt_per_5sec(List<Integer> face_move_cnt_per_5sec) {
		this.face_move_cnt_per_5sec = face_move_cnt_per_5sec;
	}
	
	public List<Integer> getEye_blink_cnt_per_5sec() {
		return eye_blink_cnt_per_5sec;
	}
	
	public void setEye_blink_cnt_per_5sec(List<Integer> eye_blink_cnt_per_5sec) {
		this.eye_blink_cnt_per_5sec = eye_blink_cnt_per_5sec;
	}
	
	public int getTotal_grade() {
		return total_grade;
	}
	
	public void setTotal_grade(int total_grade) {
		this.total_grade = total_grade;
	}
	
	@Override
	public String toString() {
		return "MongoVo [videoNo=" + videoNo + ", userId=" + userId + ", videoOriginName=" + videoOriginName
				+ ", videoPath=" + videoPath + ", videoSize=" + videoSize + ", videoSaveName=" + videoSaveName
				+ ", videoThumnail=" + videoThumnail + ", date=" + date + ", realDate=" + realDate + ", avg=" + avg
				+ ", face_move_cnt_per_5sec=" + face_move_cnt_per_5sec + ", eye_blink_cnt_per_5sec="
				+ eye_blink_cnt_per_5sec + ", total_grade=" + total_grade + "]";
	}
}
