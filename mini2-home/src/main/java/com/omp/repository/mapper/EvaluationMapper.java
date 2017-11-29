package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.EvaluationBoard;

public interface EvaluationMapper {
	
	public void insertEvaluation(EvaluationBoard evaluation) throws Exception;
	
	public void modifyEvaluation(EvaluationBoard evaluation) throws Exception;
	
	public void deleteEvaluation(int no) throws Exception;
	
	public EvaluationBoard detailEvaluation(int no) throws Exception;
	
	public List<EvaluationBoard> listEvaluation() throws Exception;
	
}
