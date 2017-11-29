package com.omp.repository.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
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

	public void modifySupportLink(SupportLink supportLink) throws Exception {
		
		mapper.modifySupportLink(supportLink);
	}

	public void insertSupportLink(SupportLink supportLink) throws Exception {
		mapper.insertSupportLink(supportLink);
		
	}

	
}
