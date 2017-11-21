package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.MembershipDomain;

public interface MembershipMapper 
{
	public void insertMemberComment(MembershipDomain msd) throws Exception;
	public void deleteMemberComment(MembershipDomain msd) throws Exception;
	public void modifyMemberComment(MembershipDomain msd) throws Exception;
	public List<MembershipDomain> readMemberComment(MembershipDomain msd) throws Exception;
	public MembershipDomain detailMemberComment(MembershipDomain msd) throws Exception;
}
