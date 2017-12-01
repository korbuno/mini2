package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Study;
import com.omp.repository.mapper.StudyMapper;

@Service("studyService")
public class StudyServiceImpl implements StudyService {

	@Autowired
	private StudyMapper mapper;
	
	@Override
	public List<Study> monthTitleList(String month) throws Exception {
		return mapper.monthTitleList(month);
	}
	
	@Override
	public void titleInsert(Study study) throws Exception {
		System.out.println(study);
		mapper.titleInsert(study);
	}
	
	@Override
	public void titleUpdate(Study study) throws Exception {
		mapper.titleUpdate(study);
	}
	
	@Override
	public List<Study> dayTitleList(String day) throws Exception {
		return mapper.dayTitleList(day);
	}
}
