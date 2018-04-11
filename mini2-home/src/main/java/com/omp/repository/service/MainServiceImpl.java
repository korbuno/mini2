package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Board;
import com.omp.repository.mapper.MainMapper;


@Service
public class MainServiceImpl implements MainService 
{
	
	@Autowired
	private MainMapper mapper;

	public Board selectNotice(int categoryNo) throws Exception {
		return mapper.selectNotice(categoryNo);
	}
	public List<Board> selectNewlyBoard() throws Exception {
		return mapper.selectNewlyBoard();
	}

	public void insertNotice(Board board) throws Exception {
		mapper.insertNotice(board);	
	}
	public void updateTodayDeal(Board board) throws Exception {
		mapper.updateTodayDeal(board);	
	}	
}
