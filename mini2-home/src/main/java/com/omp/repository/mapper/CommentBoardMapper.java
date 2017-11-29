package com.omp.repository.mapper;

import com.omp.repository.domain.CommentBoard;

public interface CommentBoardMapper {
	public void insertCommentBoard(CommentBoard comment) throws Exception;
	public void modifyCommentBoard(CommentBoard comment) throws Exception;
	public void deleteCommentBoard(int no) throws Exception;
	
}
