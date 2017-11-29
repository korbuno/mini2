package com.omp.repository.service;

import com.omp.repository.domain.Member;

public interface MemberService {
	public String jungBok(String id) throws Exception;
	public Member login(Member member) throws Exception;
}
 