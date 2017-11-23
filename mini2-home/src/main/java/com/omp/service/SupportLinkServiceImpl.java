package com.omp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.mapper.SupportLinkMapper;


@Service
public class SupportLinkServiceImpl implements SupportLinkService 
{
	
	@Autowired
	private SupportLinkMapper mapper;

	public ModelAndView readSupportLink(Page page) throws Exception {
		mapper.readSupportLink(page);
		return null;
	}

	public void deleteSupportLink() throws Exception {
		
		
	}

	public SupportLinkMapper modifySupportLink() throws Exception {
		
		return null;
	}

	public void insertSupportLink() throws Exception {
		
		
	}

	
}