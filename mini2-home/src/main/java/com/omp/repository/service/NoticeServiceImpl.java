package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Board;
import com.omp.repository.mapper.NoticeMapper;


@Service
public class NoticeServiceImpl implements NoticeService 
{
	
	@Autowired
	private NoticeMapper mapper;

	public List<Board> list(int categoryNo) throws Exception {
		return mapper.list(categoryNo);
	}

}
