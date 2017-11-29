package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.ClassBoard;
import com.omp.repository.domain.Study;

public interface StudyService {
	public List<Study> monthTitleList(String month) throws Exception;
	public void titleInsert(Study study) throws Exception;
	public void titleUpdate(Study study) throws Exception;
	public List<Study> dayTitleList(String day) throws Exception; 
	public List<ClassBoard> classBoardList(Integer no) throws Exception; 
	public int classNo() throws Exception;
	public int classBoardNo() throws Exception;
	public void classBoardInsert(ClassBoard board) throws Exception;
}
 