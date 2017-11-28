package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.Board;
import com.omp.repository.domain.Search;

public interface SearchMapper {
	public List<Board> searchBoard(Search search) throws Exception;
}
