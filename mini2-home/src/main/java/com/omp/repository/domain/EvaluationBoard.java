package com.omp.repository.domain;

import java.util.Date;

public class EvaluationBoard {
	private int BoardNo;
	private String writer;
	private String title;
	private String contents;
	private Date regDate;
	private int categoryNo;
	private int memberNo;
	
	public int getBoardNo() {
		return BoardNo;
	}
	public void setBoardNo(int boardNo) {
		BoardNo = boardNo;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	
	
	
}
