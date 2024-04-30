package com.spring.hometownC.impl;

public class PostDO {
	private int rn;
	private int seq;
	private int category;
	private String title;
	private String writer;
	private String content;
	private int liked;
	private String regdate;

	@Override
	public String toString() {
		return "PostDO [rn=" + rn + ", seq=" + seq + ", category=" + category + ", title=" + title + ", writer="
				+ writer + ", content=" + content + ", liked=" + liked + ", regdate=" + regdate + "]";
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getLiked() {
		return liked;
	}

	public void setLiked(int liked) {
		this.liked = liked;
	}

	public String getRegDate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

}
