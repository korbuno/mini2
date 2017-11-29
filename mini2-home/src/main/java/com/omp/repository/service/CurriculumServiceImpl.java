package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.Curriculum;
import com.omp.repository.domain.Membership;
import com.omp.repository.domain.SupportLink;
import com.omp.repository.mapper.AttendanceMapper;
import com.omp.repository.mapper.CurriculumMapper;
import com.omp.repository.mapper.MembershipMapper;
import com.omp.repository.mapper.SupportLinkMapper;


@Service
public class CurriculumServiceImpl implements CurriculumService

{
	
	@Autowired
	private CurriculumMapper mapper;

	@Override
	public void insertCurriculum(Curriculum curriculum) throws Exception {
		// TODO Auto-generated method stub
		mapper.insertCurriculum(curriculum);
	}

	@Override
	public void deleteCurriculum(Curriculum curriculum) throws Exception {
		// TODO Auto-generated method stub
		mapper.deleteCurriculum(curriculum);
	}

	@Override
	public void modifyCurriculum(Curriculum curriculum) throws Exception {
		// TODO Auto-generated method stub
		mapper.modifyCurriculum(curriculum);
	}

	@Override
	public List<Curriculum> readCurriculum(Curriculum curriculum) throws Exception {
		// TODO Auto-generated method stub
		return mapper.readCurriculum(curriculum);
	}

	@Override
	public Curriculum detailCurriculum(Curriculum curriculum) throws Exception {
		// TODO Auto-generated method stub
		return mapper.detailCurriculum(curriculum);
	}

	@Override
	public int totalMembershipComment() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
}
