package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.LikeHate;

public interface LikeHateMapper 
{
	public void insertLikeHate(LikeHate likehate) throws Exception;
	public void modifyLikeHate(LikeHate likehate) throws Exception;
	public int totalLikeHate(int boardNo) throws Exception;
}
