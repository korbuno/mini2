package com.omp.repository.service;

import java.util.List;

import com.omp.repository.domain.SupportLink;


public interface SupportLinkService 
{
	
	public List<SupportLink> readSupportLink(SupportLink supportLink) throws Exception;
	
	public void deleteSupportLink(int supportNo) throws Exception;
	
	public void modifySupportLink(SupportLink supportLink) throws Exception;
	
	public void insertSupportLink(SupportLink supportLink) throws Exception;
}
 