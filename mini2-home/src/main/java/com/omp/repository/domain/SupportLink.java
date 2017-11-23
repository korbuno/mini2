package com.omp.repository.domain;

import com.omp.common.Page;

public class SupportLink extends Page
{
	
	int supportNo;
	String title, site;
	
	public SupportLink() 
	{
		super(1);
	}
	
	public SupportLink(int pageNo) 
	{
		super(pageNo);
		// TODO Auto-generated constructor stub
	}
	
	public int getSupportNo() 
	{
		return supportNo;
	}
	public void setSupportNo(int supportNo) 
	{
		this.supportNo = supportNo;
	}
	public String getTitle() 
	{
		return title;
	}
	public void setTitle(String title) 
	{
		this.title = title;
	}
	public String getSite() 
	{
		return site;
	}
	public void setSite(String site) 
	{
		this.site = site;
	}
	
	
	
}
