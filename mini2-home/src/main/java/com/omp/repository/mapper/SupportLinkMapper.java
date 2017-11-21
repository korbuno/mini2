package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.SupportLinkDomain;

public interface SupportLinkMapper 
{
	public void insertSupportLink(SupportLinkDomain sld) throws Exception;
	public void deleteSupportLink(int supportNo) throws Exception;
	public void modifySupportLink(int supportNo) throws Exception;
	public List<SupportLinkDomain> readSupportLink() throws Exception;
	public SupportLinkDomain detailSupportLink(int supportNo) throws Exception;
	
}
