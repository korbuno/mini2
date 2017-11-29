package com.omp.repository.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.Attendance;
import com.omp.repository.domain.Membership;
import com.omp.repository.mapper.AttendanceMapper;


public interface MembershipService 
{	
	public void insertMemberComment(Membership membership) throws Exception;
	public void deleteMemberComment(Membership membership) throws Exception;
	public void modifyMemberComment(Membership membership) throws Exception;
	public List<Membership> readMemberComment(Membership membership) throws Exception;
	public Membership detailMemberComment(Membership membership) throws Exception;
	public int totalMembershipComment() throws Exception;
}
