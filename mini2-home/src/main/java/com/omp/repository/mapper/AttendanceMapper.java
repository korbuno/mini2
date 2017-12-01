package com.omp.repository.mapper;

import java.util.List;

import com.omp.common.Page;
import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.Member;

public interface AttendanceMapper 
{
	public void insertAttendance(Attendance attendance) throws Exception;
	public void modifyAttendance(Attendance attendance) throws Exception;
	public List<Attendance> readAttendance() throws Exception;
	public int totalAttendance() throws Exception;
	public List<Member> readMember() throws Exception;
	public int totalDay() throws Exception;
}
