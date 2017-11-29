package com.omp.repository.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.Attendance;
import com.omp.repository.mapper.AttendanceMapper;


public interface AttendanceService 
{
	
	public List<Attendance> readAttendance(Attendance Attendance) throws Exception;
	
	public void modifyAttendance(Attendance Attendance) throws Exception;
	
	public void insertAttendance(Attendance Attendance) throws Exception;
}
 