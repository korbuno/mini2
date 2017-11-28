package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.Board;

public interface NoticeMapper {
	public List<Board> list(int categoryNo) throws Exception;
}
