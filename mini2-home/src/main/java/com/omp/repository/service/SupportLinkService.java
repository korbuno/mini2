package com.omp.repository.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.SupportLink;
import com.omp.repository.mapper.SupportLinkMapper;


public interface SupportLinkService 
{
	
	public List<SupportLink> readSupportLink(SupportLink supportLink) throws Exception;
	
	public void deleteSupportLink(int supportNo) throws Exception;
	
	public void modifySupportLink(SupportLink supportLink) throws Exception;
	
	public void insertSupportLink(SupportLink supportLink) throws Exception;
}
 