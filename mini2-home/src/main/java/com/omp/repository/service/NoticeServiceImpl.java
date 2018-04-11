package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.common.Page;
import com.omp.repository.domain.Board;
import com.omp.repository.domain.CommentBoard;
import com.omp.repository.mapper.NoticeMapper;


@Service
public class NoticeServiceImpl implements NoticeService 
{
	
	@Autowired
	private NoticeMapper mapper;

	public List<Board> list(Page page) throws Exception {
		return mapper.list(page);
	}
	public int count() throws Exception {
		return mapper.count();
	}
	public List<CommentBoard> commentList(int boardNo) throws Exception {
		return mapper.commentList(boardNo);
	}
	public void delete(int boardNo) throws Exception {
		mapper.delete(boardNo);
	}
	public void update(Board board) throws Exception {
		mapper.update(board);
	}
	public void commentInsert(CommentBoard commentBoard) throws Exception {
		mapper.commentInsert(commentBoard);
	}
}
