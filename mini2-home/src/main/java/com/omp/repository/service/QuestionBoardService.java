package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.QuestionBoard;

public interface QuestionBoardService {
	public void write (QuestionBoard question)throws Exception;
	public void modify (QuestionBoard question)throws Exception; 
	public void delete (int no)throws Exception;
	public QuestionBoard detail (int no) throws Exception;
	public List<QuestionBoard> list() throws Exception;
}
