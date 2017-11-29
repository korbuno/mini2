package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.EvaluationBoard;

public interface EvaluationBoardService {
	public void write (EvaluationBoard evaluation)throws Exception;
	
	public void delete (int no)throws Exception;
	
	public void modify (EvaluationBoard evaluation)throws Exception;
	
	public EvaluationBoard detail(int no) throws Exception;
	
	public List<EvaluationBoard> list() throws Exception;
}
