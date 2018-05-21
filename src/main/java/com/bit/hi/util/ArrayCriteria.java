package com.bit.hi.util;

public class ArrayCriteria {

	private String facArray;

	
	public ArrayCriteria() {
		this.facArray = "latest";
	}

	public String getFacArray() {
		return facArray;
	}

	public void setFacArray(String facArray) {
		this.facArray = facArray;
	}

	@Override
	public String toString() {
		return "ArrayCriteria [facArray=" + facArray + "]";
	}
	
}
