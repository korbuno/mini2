package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.EvaluationBoard;
import com.omp.repository.mapper.EvaluationMapper;

@Service("evaluationBoardServeice")
public class EvaluationServiceImpl implements EvaluationBoardService {
	
	@Autowired
	private EvaluationMapper mapper = null;
	

	@Override
	public void write(EvaluationBoard evaluation) throws Exception {
		mapper.insertEvaluation(evaluation);
		
	}

	@Override	
	public void delete(int no) throws Exception {
		mapper.deleteEvaluation(no);
		
	}

	@Override
	public void modify(EvaluationBoard evaluation) throws Exception {
		mapper.modifyEvaluation(evaluation);
		
	}

	public EvaluationBoard detail(int no) throws Exception {
		
		return mapper.detailEvaluation(no);
	}

	public List<EvaluationBoard> list() throws Exception {
		
		return mapper.listEvaluation();
	}
	
	
}
