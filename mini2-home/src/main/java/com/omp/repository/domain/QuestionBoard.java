package com.omp.repository.domain;

import java.util.Date;

public class QuestionBoard {
	private int boardNo;
	private String writer;
	private String title;
	private String contents;
	private Date regDate;
	private int categoryNo=1;
	private int memberNo=1;
	private String advice;
	
	
	public String getAdvice() {
		return advice;
	}

	public void setAdvice(String advice) {
		this.advice = advice;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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

	@Override
	public String toString() {
		return "QuestionBoard [boardNo=" + boardNo + ", writer=" + writer + ", title=" + title + ", contents="
				+ contents + ", regDate=" + regDate + ", categoryNo=" + categoryNo + ", memberNo=" + memberNo
				+ ", advice=" + advice + "]";
	}

	
	
	

}
