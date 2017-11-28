package com.omp.repository.service;

import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.SupportLink;
import com.omp.repository.mapper.SupportLinkMapper;


public interface SupportLinkService 
{
	
	public List<SupportLink> readSupportLink(SupportLink supportLink) throws Exception;
	
	public void deleteSupportLink(int supportNo) throws Exception;
	
	public SupportLinkMapper modifySupportLink() throws Exception;
	
	public void insertSupportLink(SupportLink supportLink) throws Exception;
}
 