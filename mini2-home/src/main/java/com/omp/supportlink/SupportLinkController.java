package com.omp.supportlink;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.mapper.SupportLinkMapper;
import com.omp.service.SupportLinkService;

@Controller
public class SupportLinkController 
{
	@Autowired
	private SupportLinkService supportLinkService;
	
	
	
	@RequestMapping("/supportlink/readSupport.do")
	public ModelAndView readSupportLink(
			@RequestParam(name="pageNo", defaultValue="1") int no) throws Exception 
	{
		ModelAndView mav = new ModelAndView();
		mav.addObject("supportList", supportLinkService.readSupportLink(new Page(no)));
		return mav;
	}
	
	@RequestMapping("/supportlink/deleteSupport.do")
	public void deleteSupportLink() throws Exception
	{
		
	}
	
	@RequestMapping("/supportlink/modifySupport.do")
	public SupportLinkMapper modifySupportLink() throws Exception
	{
		return null;
	}
	
	@RequestMapping("/supportlink/insertSupport.do")
	public void insertSupportLink() throws Exception
	{
		
	}
}














