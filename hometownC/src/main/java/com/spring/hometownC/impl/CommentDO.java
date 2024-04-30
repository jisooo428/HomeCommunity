package com.spring.hometownC.impl;

public class CommentDO {
	private int seq;
	private String writer;
	private String comment;
	private String regdate;
	private int postseq;
	
	@Override
	public String toString() {
		return "CommentDO [seq=" + seq + ", writer=" + writer + ", comment=" + comment + ", regdate=" + regdate
				+ ", postseq=" + postseq + "]";
	}
	
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getPostseq() {
		return postseq;
	}

	public void setPostseq(int postseq) {
		this.postseq = postseq;
	}

	
	
	

}
