package com.omp.supportlink;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.SupportLink;
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
	
	@RequestMapping("/supportlink/deleteSupport.json")
	@ResponseBody
	public List<SupportLink>  deleteSupportLink(int supportNo) throws Exception
	{
		supportLinkService.deleteSupportLink(supportNo);
		return supportLinkService.readSupportLink(new SupportLink(1));
	}
	
	@RequestMapping("/supportlink/modifySupport.do")
	@ResponseBody
	public List<SupportLink> modifySupportLink(SupportLink supportLink) throws Exception
	{
		System.out.println(supportLink.getSite());
		supportLinkService.modifySupportLink(supportLink);
		return supportLinkService.readSupportLink(new SupportLink(1));
	}
	
	
	@RequestMapping("/supportlink/insertSupport.do")
	@ResponseBody
	public List<SupportLink> insertSupportLink(SupportLink supportLink) throws Exception
	{
		System.out.println(supportLink);
		supportLinkService.insertSupportLink(supportLink);
		return supportLinkService.readSupportLink(new SupportLink(1));
	}
}














