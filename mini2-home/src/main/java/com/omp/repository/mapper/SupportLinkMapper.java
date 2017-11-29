package com.omp.repository.mapper;

import java.util.List;

import com.omp.common.Page;
import com.omp.repository.domain.SupportLink;

public interface SupportLinkMapper 
{
	public void insertSupportLink(SupportLink supportLink) throws Exception;
	public void deleteSupportLink(int supportNo) throws Exception;
	public void modifySupportLink(SupportLink supportLink) throws Exception;
	public List<SupportLink> readSupportLink(SupportLink supportLink) throws Exception;
	public SupportLink detailSupportLink(int supportNo) throws Exception;
	public int totalSupportLink() throws Exception;
	
}
