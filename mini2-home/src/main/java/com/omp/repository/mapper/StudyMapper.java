package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.Study;

public interface StudyMapper {
	public List<Study> monthTitleList(String month) throws Exception;
	public void titleInsert(Study study) throws Exception;
	public void titleUpdate(Study study) throws Exception;
	public List<Study> dayTitleList(String day) throws Exception;
	/*public void insertClass(Study study, ClassBoard board) throws Exception;
	public void deleteClass(int no) throws Exception;
	public Study modifyForm(int no) throws Exception;
	public void modify(Study study) throws Exception;
	public Study detail(int no) throws Exception;*/
}
