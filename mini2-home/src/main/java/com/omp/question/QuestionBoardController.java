package com.omp.question;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.omp.repository.domain.QuestionBoard;
import com.omp.repository.service.QuestionBoardService;

@Controller
public class QuestionBoardController {
	
	@Autowired
	private QuestionBoardService questionBoardService;
	
	//글쓰기
	@RequestMapping("/question/questionwrite.do")
	public void write (QuestionBoard question) throws Exception{
		questionBoardService.write(question);
		
	}
	
	// 수정
	@RequestMapping("/question/questionModify.do")
	public void modify (QuestionBoard question) throws Exception{
		questionBoardService.modify(question);
	}
	
	// 상세
	@RequestMapping("/question/questionDetail.do")
	public void detail (int no, Model model) throws Exception{
		model.addAttribute("question", questionBoardService.detail(no));
	}
		
	//삭제
	@RequestMapping("/question/questionDelete.do")
	public void delete (int no) throws Exception{
		questionBoardService.delete(no);
	}
	
	//목록
	@RequestMapping("/question/questionList.do")
	public void list (@RequestParam(name="pageNo", defaultValue="1") int no, Model model) throws Exception{
		model.addAttribute("questionList", questionBoardService.list());
	}
	

	
	
}
