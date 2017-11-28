package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.Board;

public interface NoticeService 
{
	public List<Board> list(int categoryNo) throws Exception;
}
 