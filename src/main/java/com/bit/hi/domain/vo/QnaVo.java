package com.bit.hi.domain.vo;

public class QnaVo {
	private int qna_no;
	private String qna_title;
	private String qna_content;
	private String qna_date;
	private String user_id;
	private int qna_hit_cnt;
	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_date() {
		return qna_date;
	}
	public void setQna_date(String qna_date) {
		this.qna_date = qna_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getQna_hit_cnt() {
		return qna_hit_cnt;
	}
	public void setQna_hit_cnt(int qna_hit_cnt) {
		this.qna_hit_cnt = qna_hit_cnt;
	}
	@Override
	public String toString() {
		return "QnaVo [qna_no=" + qna_no + ", qna_title=" + qna_title + ", qna_content=" + qna_content + ", qna_date="
				+ qna_date + ", user_id=" + user_id + ", qna_hit_cnt=" + qna_hit_cnt + "]";
	}
	public QnaVo(int qna_no, String qna_title, String qna_content, String qna_date, String user_id, int qna_hit_cnt) {
		super();
		this.qna_no = qna_no;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_date = qna_date;
		this.user_id = user_id;
		this.qna_hit_cnt = qna_hit_cnt;
	}
	public QnaVo() {
		super();
	}
	
}
