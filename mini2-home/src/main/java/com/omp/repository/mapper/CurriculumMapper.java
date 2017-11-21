package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.CurriculumDomain;

public interface CurriculumMapper 
{
	public void insertBoard(CurriculumDomain db) throws Exception;
	public void deleteBoard(int boardNo) throws Exception;
	public void modifyBoard(int boardNo) throws Exception;
	public List<CurriculumDomain> readBoard() throws Exception;
	public CurriculumDomain detailBoard(int boardNo) throws Exception;
}
