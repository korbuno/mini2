package com.omp.curriculum;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.Curriculum;
import com.omp.repository.service.CurriculumService;

@Controller
public class CurriculumController 
{
	@Autowired
	private CurriculumService curriculumService;

	//ajax 로 값을 return
	@RequestMapping("/curriculum/curriculum.json")
	@ResponseBody
	public List<Curriculum> readCurriculum(@RequestParam(name="pageNo", defaultValue="1") int no) throws Exception 
	{
		return curriculumService.readCurriculum();
	}
	
	//주소로 이동
	@RequestMapping("/curriculum/curriculum.do")
	public void readCurriculum() throws Exception{}

	
	@RequestMapping("/curriculum/modifycurriculum.do")
	@ResponseBody
	public List<Curriculum> modifyCurriculum(Curriculum curriculum) throws Exception
	{
		System.out.println(curriculum.getBoardNo());
		curriculumService.modifyCurriculum(curriculum);
		return curriculumService.readCurriculum();
	}
	
	@RequestMapping("/curriculum/deletecurriculum.json")
	@ResponseBody
	public List<Curriculum>  deleteCurriculum(Curriculum curriculum) throws Exception
	{
		System.out.println(curriculum.getBoardNo());
		curriculumService.deleteCurriculum(curriculum);
		return curriculumService.readCurriculum();
	}
	
	
	@RequestMapping("/curriculum/insertcurriculum.do")
	@ResponseBody
	public List<Curriculum> insertCurriculum(Curriculum curriculum) throws Exception
	{
		
		curriculumService.insertCurriculum(curriculum);
		return curriculumService.readCurriculum();
	}
}














