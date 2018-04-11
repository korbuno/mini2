package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omp.repository.domain.Membership;
import com.omp.repository.mapper.MembershipMapper;


@Service
public class MembershipServiceImpl implements MembershipService

{
	
	@Autowired
	private MembershipMapper mapper;

	@Override
	public void insertMemberComment(Membership membership) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMemberComment(Membership membership) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyMemberComment(Membership membership) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Membership> readMemberComment(Membership membership) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Membership detailMemberComment(Membership membership) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int totalMembershipComment() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	

	
}
