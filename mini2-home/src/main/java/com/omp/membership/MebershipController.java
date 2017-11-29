package com.omp.membership;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.Membership;
import com.omp.repository.service.MembershipService;

@Controller
public class MebershipController 
{
	@Autowired
	private MembershipService membershipService;

	//ajax 로 값을 return
	@RequestMapping("/membership/membership.json")
	@ResponseBody
	public List<Membership> readMemberShipComment(Membership membership) throws Exception 
	{
		return membershipService.readMemberComment(membership);
	}
	
	//주소로 이동
	@RequestMapping("/membership/membership.do")
	public void readMemberShipComment() throws Exception{}

	
	@RequestMapping("/membership/modifyMembership.do")
	@ResponseBody
	public List<Membership> modifyMembershipComment(Membership membership) throws Exception
	{
		membershipService.modifyMemberComment(membership);
		return membershipService.readMemberComment(membership);
	}
	
	@RequestMapping("/membership/deleteMembership.json")
	@ResponseBody
	public List<Membership>  deleteMembershipComment(Membership membership) throws Exception
	{
		membershipService.deleteMemberComment(membership);
		return membershipService.readMemberComment(membership);
	}
	
	
	@RequestMapping("/membership/insertMembership.do")
	@ResponseBody
	public List<Membership>  insertMembershipComment(Membership membership) throws Exception
	{
		membershipService.insertMemberComment(membership);
		return membershipService.readMemberComment(membership);
	}
}














