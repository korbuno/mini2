package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.QuestionBoard;

public interface QuestionMapper {
	public void insertQuestion(QuestionBoard question) throws Exception;
	
	public void modifyQuestion(QuestionBoard questionBoard) throws Exception;
	
	public void deleteQuestion(int boardNo) throws Exception;
	
	public QuestionBoard detailQuestion(int boardNo) throws Exception;
	
	public List<QuestionBoard> listQuestion () throws Exception;
	
	public void adviceQuestion(QuestionBoard question) throws Exception;
	
	public QuestionBoard detailAdvice (int boardNo) throws Exception;

	

	

	
}
