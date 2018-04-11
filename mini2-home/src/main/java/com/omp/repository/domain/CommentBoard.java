package com.omp.repository.domain;

import java.util.Date;

public class CommentBoard {

	private int commentNo;
	private int boardNo;
	private String commentWriter;
	private String commentContents;
	private Date commentRegdate;
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getCommentWriter() {
		return commentWriter;
	}
	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}
	public String getCommentContents() {
		return commentContents;
	}
	public void setCommentContents(String commentContents) {
		this.commentContents = commentContents;
	}
	public Date getCommentRegdate() {
		return commentRegdate;
	}
	public void setCommentRegdate(Date commentRegdate) {
		this.commentRegdate = commentRegdate;
	}
	
	
}
