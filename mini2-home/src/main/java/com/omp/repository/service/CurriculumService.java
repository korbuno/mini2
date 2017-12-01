package com.omp.repository.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.Curriculum;
import com.omp.repository.domain.Membership;
import com.omp.repository.mapper.AttendanceMapper;


public interface CurriculumService 
{	
	public void insertCurriculum(Curriculum curriculum) throws Exception;
	public void deleteCurriculum(Curriculum curriculum) throws Exception;
	public void modifyCurriculum(Curriculum curriculum) throws Exception;
	public List<Curriculum> readCurriculum() throws Exception;
	public Curriculum detailCurriculum(Curriculum curriculum) throws Exception;
	public int totalMembershipComment() throws Exception;
}
