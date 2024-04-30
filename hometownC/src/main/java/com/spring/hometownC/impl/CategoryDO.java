package com.spring.hometownC.impl;

public class CategoryDO {
	private int seq;
	private String category;
	@Override
	public String toString() {
		return "CategoryDO [seq=" + seq + ", category=" + category + "]";
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	

}
