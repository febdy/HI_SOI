package com.bit.hi.domain.vo;

public class CsVo {
	private int qnaNo;
	private String qna_title;
	private String qna_content;
	private String qna_date;
	private String user_id;
	private int hit;

	public CsVo() {
		super();
	}

	public CsVo(int qnaNo, String qna_title, String qna_content, String qna_date, String user_id, int hit) {
		super();
		this.qnaNo = qnaNo;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_date = qna_date;
		this.user_id = user_id;
		this.hit = hit;
	}

	public int getQnaNo() {
		return qnaNo;
	}


	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "QnaVo [qnaNo=" + qnaNo + ", qna_title=" + qna_title + ", qna_content=" + qna_content + ", qna_date="
				+ qna_date + ", user_id=" + user_id + ", hit=" + hit + "]";
	}
	
}
