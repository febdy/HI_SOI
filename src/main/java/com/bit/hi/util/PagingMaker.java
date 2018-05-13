package com.bit.hi.util;

public class PagingMaker {
	private int totalData; //전체 데이터 수
	private int startPage; //페이지목록의 시작번호
	private int endPage; //페이지 목록의 끝번호
	private boolean prev; //이전 버튼을 나타내는 값
	private boolean next; //다음 버튼을 나타내는  값
	
	private int displayPageNum=10; //페이지 목록에 나타낼 번호의 수
	
	private PageCriteria cri;
	
	public void setCri(PageCriteria cri) {
		this.cri = cri;
	}
	
	//sql문으로 전체 데이터 수를 구해오면 이 값을 이용
	public void setTotalData(int totalData) {
		this.totalData = totalData;
		
		getPagingData(); //여기서 사용하여, 페이지 목록 정보를 구함.
	}
	
	private void getPagingData() {
		endPage = (int)(Math.ceil(cri.getPage()/(double)displayPageNum) * displayPageNum);
	
		startPage=(endPage - displayPageNum) + 1;
		
		int finalEndPage = (int)(Math.ceil(totalData/(double)cri.getNumPerPage()));
		
		if (endPage > finalEndPage) {
			endPage = finalEndPage;
		}
		
		prev = startPage == 1? false: true;
		
		next = endPage*cri.getNumPerPage() >= totalData? false: true;
		
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getTotalData() {
		return totalData;
	}

	public PageCriteria getCri() {
		return cri;
	}
	
}
