package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.QuestionBoard;
import com.omp.repository.mapper.QuestionMapper;

@Service("QuestionBoardService")
public class QuestionServiceImpl implements QuestionBoardService {
	
	@Autowired
	private QuestionMapper mapper;

	
	public void write(QuestionBoard question) throws Exception {
		mapper.insertQuestion(question);
		
	}

	
	public void delete(int boardNo) throws Exception {
		mapper.deleteQuestion(boardNo);
		
	}

	
	public void modify(QuestionBoard questionBoard) throws Exception {
		mapper.modifyQuestion(questionBoard);
		
	}

	
	public QuestionBoard detail(int boardNo) throws Exception {
		
		return mapper.detailQuestion(boardNo);
	}

	
	public List<QuestionBoard> list() throws Exception {
		
		return mapper.listQuestion();
	}


	@Override
	public void advice(QuestionBoard question) throws Exception {
		
		mapper.adviceQuestion(question);
	}


	@Override
	public QuestionBoard detailAd(int boardNo) throws Exception {
		
		return mapper.detailAdvice(boardNo);
	}


	
	
	
		
	

}
