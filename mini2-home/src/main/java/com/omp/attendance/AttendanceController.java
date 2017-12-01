package com.omp.attendance;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.Member;
import com.omp.repository.service.AttendanceService;

@Controller
public class AttendanceController 
{
	@Autowired
	private AttendanceService attendanceService;

	//ajax 로 값을 return
	@RequestMapping("/attendance/readAttendance.json")
	@ResponseBody
	public List<Attendance> readAttendance(
			@RequestParam(name="pageNo", defaultValue="1") int no) throws Exception 
	{
		return attendanceService.readAttendance();
	}
	
	@RequestMapping("/attendance/readMember.json")
	@ResponseBody
	public Map<String, Object> readMember() throws Exception 
	{
		Map<String, Object> map = new HashMap<>();
		map.put("member", attendanceService.readMember());
		map.put("totalDay", attendanceService.totalDay());
		map.put("attendance", attendanceService.readAttendance());
		return map;
	}
	
	//주소로 이동
	@RequestMapping("/attendance/attendance.do")
	public void readAttendance() throws Exception{}

	
	@RequestMapping("/attendance/modifyAttendance.do")
	@ResponseBody
	public List<Attendance> modifyAttendance(Attendance attendance) throws Exception
	{
		attendanceService.modifyAttendance(attendance);
		return attendanceService.readAttendance();
	}
	
	
	@RequestMapping("/attendance/insertAttendance.json")
	@ResponseBody
	public List<Attendance> insertAttendance(Attendance attendance) throws Exception
	{
		
		attendanceService.insertAttendance(attendance);
		return attendanceService.readAttendance();
	}
}














