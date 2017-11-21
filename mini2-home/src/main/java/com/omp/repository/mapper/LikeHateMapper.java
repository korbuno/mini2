package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.LikeHateDomain;

public interface LikeHateMapper 
{
	public void insertLikeHate(LikeHateDomain lhd) throws Exception;
	public void modifyLikeHate(LikeHateDomain lhd) throws Exception;
	public List<LikeHateDomain> readLikeHate(int boardNo) throws Exception;
}
