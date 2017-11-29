package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.SupportLink;
import com.omp.repository.mapper.AttendanceMapper;
import com.omp.repository.mapper.SupportLinkMapper;


@Service
public class AttendanceServiceImpl implements AttendanceService 
{
	
	@Autowired
	private AttendanceMapper mapper;

	@Override
	public List<Attendance> readAttendance(Attendance Attendance) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyAttendance(Attendance Attendance) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertAttendance(Attendance Attendance) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
}
