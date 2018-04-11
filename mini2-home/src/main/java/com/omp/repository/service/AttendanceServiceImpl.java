package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.Member;
import com.omp.repository.mapper.AttendanceMapper;


@Service
public class AttendanceServiceImpl implements AttendanceService 
{

	

	@Autowired
	private AttendanceMapper mapper;

	@Override
	public List<Attendance> readAttendance() throws Exception {
		// TODO Auto-generated method stub
		return mapper.readAttendance();
	}

	@Override
	public void modifyAttendance(Attendance attendance) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertAttendance(Attendance attendance) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(attendance.getAttendanceNo() + "  : " + attendance.getAttend());
		mapper.insertAttendance(attendance);
	}
	
	@Override
	public List<Member> readMember() throws Exception  {
		// TODO Auto-generated method stub
		return mapper.readMember();
	}

	@Override
	public int totalDay() throws Exception {
		// TODO Auto-generated method stub
		return mapper.totalDay();
	}
}
