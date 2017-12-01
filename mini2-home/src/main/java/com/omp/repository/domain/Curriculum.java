package com.omp.repository.domain;

import java.util.Date;

import com.omp.common.Page;

public class Curriculum
{
	
	int boardNo, categoryNo, memberNo;
	String writer, title, contents;
	Date regDate;
	
	public Curriculum() 
	{
	}
	
	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	public int getBoardNo()
	{
		return boardNo;
	}
	public void setBoardNo(int boardNo) 
	{
		this.boardNo = boardNo;
	}
	public int getCategoryNo() 
	{
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) 
	{
		this.categoryNo = categoryNo;
	}
	public String getWriter() 
	{
		return writer;
	}
	public void setWriter(String writer) 
	{
		this.writer = writer;
	}
	public String getTitle() 
	{
		return title;
	}
	public void setTitle(String title) 
	{
		this.title = title;
	}
	public String getContents()
	{
		return contents;
	}
	public void setContents(String contents) 
	{
		this.contents = contents;
	}
	public Date getRegDate() 
	{
		return regDate;
	}
	public void setRegDate(Date regDate) 
	{
		this.regDate = regDate;
	}
	
	
	
}
