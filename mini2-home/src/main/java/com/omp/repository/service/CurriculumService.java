package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.Curriculum;


public interface CurriculumService 
{	
	public void insertCurriculum(Curriculum curriculum) throws Exception;
	public void deleteCurriculum(Curriculum curriculum) throws Exception;
	public void modifyCurriculum(Curriculum curriculum) throws Exception;
	public List<Curriculum> readCurriculum() throws Exception;
	public Curriculum detailCurriculum(Curriculum curriculum) throws Exception;
	public int totalMembershipComment() throws Exception;
}
