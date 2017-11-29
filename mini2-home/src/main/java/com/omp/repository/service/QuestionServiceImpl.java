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

	
	public void delete(int no) throws Exception {
		mapper.deleteQuestion(no);
		
	}

	
	public void modify(QuestionBoard question) throws Exception {
		mapper.modifyQuestion(question);
		
	}

	
	public QuestionBoard detail(int no) throws Exception {
		
		return mapper.detailQuestion(no);
	}

	
	public List<QuestionBoard> list() throws Exception {
		
		return mapper.listQuestion();
	}

}
