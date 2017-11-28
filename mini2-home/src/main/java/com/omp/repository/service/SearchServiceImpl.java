package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Board;
import com.omp.repository.domain.Search;
import com.omp.repository.mapper.SearchMapper;


@Service
public class SearchServiceImpl implements SearchService 
{
	@Autowired
	private SearchMapper mapper;

	public List<Board> searchBoard(Search search) throws Exception {
		return mapper.searchBoard(search);
	}

}
