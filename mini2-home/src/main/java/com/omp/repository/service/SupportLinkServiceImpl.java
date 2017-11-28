package com.omp.repository.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.SupportLink;
import com.omp.repository.mapper.SupportLinkMapper;


@Service
public class SupportLinkServiceImpl implements SupportLinkService 
{
	
	@Autowired
	private SupportLinkMapper mapper;

	public List<SupportLink> readSupportLink(SupportLink supportLink) throws Exception {
		return mapper.readSupportLink(supportLink);
	}

	public void deleteSupportLink(int supportNo) throws Exception {
		
		mapper.deleteSupportLink(supportNo);
	}

	public SupportLinkMapper modifySupportLink() throws Exception {
		
		return null;
	}

	public void insertSupportLink(SupportLink supportLink) throws Exception {
		mapper.insertSupportLink(supportLink);
		
	}

	
}
