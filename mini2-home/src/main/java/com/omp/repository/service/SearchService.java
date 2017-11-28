package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.Board;
import com.omp.repository.domain.Search;

public interface SearchService 
{
	public List<Board> searchBoard(Search search) throws Exception;
}
 