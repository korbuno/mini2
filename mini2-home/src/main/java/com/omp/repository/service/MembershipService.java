package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.Membership;


public interface MembershipService 
{	
	public void insertMemberComment(Membership membership) throws Exception;
	public void deleteMemberComment(Membership membership) throws Exception;
	public void modifyMemberComment(Membership membership) throws Exception;
	public List<Membership> readMemberComment(Membership membership) throws Exception;
	public Membership detailMemberComment(Membership membership) throws Exception;
	public int totalMembershipComment() throws Exception;
}
