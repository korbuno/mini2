package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.Member;


public interface AttendanceService 
{
	
	public List<Attendance> readAttendance() throws Exception;
	
	public void modifyAttendance(Attendance attendance) throws Exception;
	
	public void insertAttendance(Attendance attendance) throws Exception;

	public List<Member> readMember() throws Exception;
	
	public int totalDay() throws Exception;
}
 