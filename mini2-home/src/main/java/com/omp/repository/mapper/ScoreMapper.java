package com.omp.repository.mapper;

import com.omp.repository.domain.Score;

public interface ScoreMapper {
	public void insertScore(Score score) throws Exception;
	public void modifyScore(Score score) throws Exception;
	public void deleteScore(int no) throws Exception;
	
}
