package com.bit.hi.util;

public class PageCriteria {
	
	private int page; //시작 페이지
	private int numPerPage; //페이지당 갯수
	
	public PageCriteria() {
		this.page=1;
		this.numPerPage=10;
	}
	
	public void setPage(int page) {
		if (page<=0) {
			this.page=1;
			return;
		}
		
		this.page=page;
	}
	
	public void setNumPerPage(int numPerPage) {
		if (numPerPage <= 0 || numPerPage >100) {
			this.numPerPage=10;
			return;
		}
		
		this.numPerPage=numPerPage;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getStartPage() { //dao에서 사용
		return (this.page-1)*numPerPage;
	}
	
	public int getEndPage() { //dao에서 사용
		return (this.page-1)*numPerPage+numPerPage;
	}
	
	public int getNumPerPage() {
		return this.numPerPage;
	}

	@Override
	public String toString() {
		return "PageCriteria [page=" + page + ", numPerPage=" + numPerPage + "]";
	}
}
