package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.AttendanceDomain;

public interface AttendanceMapper 
{
	public void insertAttendance(AttendanceDomain add) throws Exception;
	public void modifyAttendance(AttendanceDomain add) throws Exception;
	public List<AttendanceDomain> readAttendance() throws Exception;
}
