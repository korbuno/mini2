package com.omp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import db.repository.mapper.MemberMapper;
import db.repository.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;

	public List<Member> retrieveMember() throws Exception {
		return mapper.selectMember();
	}
	
	public Member retrieveMemberInfo(String id) throws Exception {
		return mapper.selectMemberById(id);
	}
	
	@Transactional(rollbackFor=Exception.class)
	public void registMember(Member memberVO) throws Exception {
		mapper.insertMember(memberVO);
		mapper.updateMember(memberVO);
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public void deleteMember(String id) throws Exception {
		mapper.deleteMember(id);
	}
	
}
