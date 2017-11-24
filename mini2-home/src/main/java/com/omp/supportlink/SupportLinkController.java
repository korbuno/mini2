package com.omp.supportlink;

import java.security.Provider.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.omp.common.Page;
import com.omp.repository.domain.SupportLink;
import com.omp.repository.mapper.SupportLinkMapper;
import com.omp.repository.service.SupportLinkService;

@Controller
public class SupportLinkController 
{
	@Autowired
	private SupportLinkService supportLinkService;
	
	
	
	/*@RequestMapping("/supportlink/readSupport.do")
	public void readSupportLink(
			@RequestParam(name="pageNo", defaultValue="1") int no, Model model) throws Exception 
	{
		model.addAttribute("supportList", supportLinkService.readSupportLink(new SupportLink(no)));
	}*/
	
	//ajax 로 값을 return
	@RequestMapping("/supportlink/readSupport.json")
	@ResponseBody
	public List<SupportLink> readSupportLink(
			@RequestParam(name="pageNo", defaultValue="1") int no) throws Exception 
	{
		return supportLinkService.readSupportLink(new SupportLink(no));
	}
	
	//주소로 이동
	@RequestMapping("/supportlink/readSupport.do")
	public void readSupportLink() throws Exception{}
	
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
	@ResponseBody
	public List<SupportLink> insertSupportLink(SupportLink supportLink) throws Exception
	{
		supportLinkService.insertSupportLink(supportLink);
		return supportLinkService.readSupportLink(new SupportLink(1));
	}
}














