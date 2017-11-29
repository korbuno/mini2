package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.QuestionBoard;

public interface QuestionMapper {
	public void insertQuestion(QuestionBoard question) throws Exception;
	
	public void modifyQuestion(QuestionBoard question) throws Exception;
	
	public void deleteQuestion(int no) throws Exception;
	
	public QuestionBoard detailQuestion(int no) throws Exception;
	
	public List<QuestionBoard> listQuestion () throws Exception;
	
}
