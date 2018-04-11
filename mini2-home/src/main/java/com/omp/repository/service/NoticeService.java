package com.omp.repository.service;

import java.util.List;

import com.omp.common.Page;
import com.omp.repository.domain.Board;
import com.omp.repository.domain.CommentBoard;

public interface NoticeService 
{
	public List<Board> list(Page page) throws Exception;
	public List<CommentBoard> commentList(int boardNo) throws Exception;
	public int count() throws Exception;	
	public void delete(int boardNo) throws Exception;	
	public void update(Board board) throws Exception;
	public void commentInsert(CommentBoard commentBoard) throws Exception;
	
}
 