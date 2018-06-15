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
	private int videoDelete;
	private Date date; //최근 10개를 위해 변수 추가
	private String realDate;
	private double scoreAvgRate;
	//밑에 5개 변수는 임의로 그래프 작성을 위해, 만든 변수임.
	private int total_video_time;
	private List<Integer> face_move_cnt_per_5sec; //얼굴 움직임(5초 단위)
	private List<Integer> eye_blink_cnt_per_5sec; //눈 움직임(5초 단위)
	private List<Integer> s_move_cnt_per_5sec; //어깨 움직임(5초)
	private List<Integer> k_move_cnt_per_5sec; //무릎 움직임(5초)
	private List<Integer> w_move_cnt_per_5sec; //손 움직임(5초)
	private int total_grade; //총 점수 (계산식 : 100 - ((얼굴횟수+눈횟수) x 2))
	private int face_move_cnt; //얼굴 움직임 총합
	private int blink_cnt; //눈깜빡임 총합
	private int shoulder_move_cnt; //어깨 움직임 총합
	private int wrist_move_cnt; //손 움직임 총합
	private int knee_move_cnt; //무릎 움직임 총합
	private List<Integer> move_direction; //얼굴 움직임 방향
	private List<Integer> s_move_direction; //어깨 움직임 방향
	private List<Integer> k_move_direction; //무릎 움직임 방향
	private List<Integer> w_move_direction; //손 움직임 방향
	
	public MongoVo() {
	}

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

	public int getVideoDelete() {
		return videoDelete;
	}

	public void setVideoDelete(int videoDelete) {
		this.videoDelete = videoDelete;
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

	public double getScoreAvgRate() {
		return scoreAvgRate;
	}

	public void setScoreAvgRate(double scoreAvgRate) {
		this.scoreAvgRate = scoreAvgRate;
	}

	public int getTotal_video_time() {
		return total_video_time;
	}

	public void setTotal_video_time(int total_video_time) {
		this.total_video_time = total_video_time;
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

	public List<Integer> getS_move_cnt_per_5sec() {
		return s_move_cnt_per_5sec;
	}

	public void setS_move_cnt_per_5sec(List<Integer> s_move_cnt_per_5sec) {
		this.s_move_cnt_per_5sec = s_move_cnt_per_5sec;
	}

	public List<Integer> getK_move_cnt_per_5sec() {
		return k_move_cnt_per_5sec;
	}

	public void setK_move_cnt_per_5sec(List<Integer> k_move_cnt_per_5sec) {
		this.k_move_cnt_per_5sec = k_move_cnt_per_5sec;
	}

	public List<Integer> getW_move_cnt_per_5sec() {
		return w_move_cnt_per_5sec;
	}

	public void setW_move_cnt_per_5sec(List<Integer> w_move_cnt_per_5sec) {
		this.w_move_cnt_per_5sec = w_move_cnt_per_5sec;
	}

	public int getTotal_grade() {
		return total_grade;
	}

	public void setTotal_grade(int total_grade) {
		this.total_grade = total_grade;
	}

	public int getFace_move_cnt() {
		return face_move_cnt;
	}

	public void setFace_move_cnt(int face_move_cnt) {
		this.face_move_cnt = face_move_cnt;
	}

	public int getBlink_cnt() {
		return blink_cnt;
	}

	public void setBlink_cnt(int blink_cnt) {
		this.blink_cnt = blink_cnt;
	}

	public int getShoulder_move_cnt() {
		return shoulder_move_cnt;
	}

	public void setShoulder_move_cnt(int shoulder_move_cnt) {
		this.shoulder_move_cnt = shoulder_move_cnt;
	}

	public int getWrist_move_cnt() {
		return wrist_move_cnt;
	}

	public void setWrist_move_cnt(int wrist_move_cnt) {
		this.wrist_move_cnt = wrist_move_cnt;
	}

	public int getKnee_move_cnt() {
		return knee_move_cnt;
	}

	public void setKnee_move_cnt(int knee_move_cnt) {
		this.knee_move_cnt = knee_move_cnt;
	}

	public List<Integer> getMove_direction() {
		return move_direction;
	}

	public void setMove_direction(List<Integer> move_direction) {
		this.move_direction = move_direction;
	}

	public List<Integer> getS_move_direction() {
		return s_move_direction;
	}

	public void setS_move_direction(List<Integer> s_move_direction) {
		this.s_move_direction = s_move_direction;
	}

	public List<Integer> getK_move_direction() {
		return k_move_direction;
	}

	public void setK_move_direction(List<Integer> k_move_direction) {
		this.k_move_direction = k_move_direction;
	}

	public List<Integer> getW_move_direction() {
		return w_move_direction;
	}

	public void setW_move_direction(List<Integer> w_move_direction) {
		this.w_move_direction = w_move_direction;
	}

	@Override
	public String toString() {
		return "MongoVo [videoNo=" + videoNo + ", userId=" + userId + ", videoOriginName=" + videoOriginName
				+ ", videoPath=" + videoPath + ", videoSize=" + videoSize + ", videoSaveName=" + videoSaveName
				+ ", videoThumnail=" + videoThumnail + ", videoDelete=" + videoDelete + ", date=" + date + ", realDate="
				+ realDate + ", scoreAvgRate=" + scoreAvgRate + ", total_video_time=" + total_video_time
				+ ", face_move_cnt_per_5sec=" + face_move_cnt_per_5sec + ", eye_blink_cnt_per_5sec="
				+ eye_blink_cnt_per_5sec + ", s_move_cnt_per_5sec=" + s_move_cnt_per_5sec + ", k_move_cnt_per_5sec="
				+ k_move_cnt_per_5sec + ", w_move_cnt_per_5sec=" + w_move_cnt_per_5sec + ", total_grade=" + total_grade
				+ ", face_move_cnt=" + face_move_cnt + ", blink_cnt=" + blink_cnt + ", shoulder_move_cnt="
				+ shoulder_move_cnt + ", wrist_move_cnt=" + wrist_move_cnt + ", knee_move_cnt=" + knee_move_cnt
				+ ", move_direction=" + move_direction + ", s_move_direction=" + s_move_direction
				+ ", k_move_direction=" + k_move_direction + ", w_move_direction=" + w_move_direction + "]";
	}
	
}
