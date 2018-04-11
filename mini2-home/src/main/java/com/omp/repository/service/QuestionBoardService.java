package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.QuestionBoard;

public interface QuestionBoardService {
	public void write (QuestionBoard question)throws Exception;
	public void modify (QuestionBoard questionBoard)throws Exception; 
	public void delete (int boardNo)throws Exception;
	public QuestionBoard detail (int boardNo) throws Exception;
	public List<QuestionBoard> list() throws Exception;
	public void advice(QuestionBoard question) throws Exception;
	public QuestionBoard detailAd(int boardNo) throws Exception;
}
