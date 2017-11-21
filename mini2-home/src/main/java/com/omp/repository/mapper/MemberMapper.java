package com.omp.repository.mapper;

import com.omp.repository.domain.Member;

public interface MemberMapper {
	public void insertMember(Member member) throws Exception; // 회원 등록
	public void deleteMember(int no) throws Exception; // 회원 삭제
	public Member modifyForm(int no) throws Exception; //회원 정보 수정폼
	public void modify(Member member) throws Exception; // 회원 정보 수정
	public Member detail(int no) throws Exception; // 회원 정보 상세
	public void verify(Member member) throws Exception; // 최초 이메일 인증
}
