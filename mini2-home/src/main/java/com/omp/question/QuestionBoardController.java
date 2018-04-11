package com.omp.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.omp.repository.domain.QuestionBoard;
import com.omp.repository.service.QuestionBoardService;

@Controller
public class QuestionBoardController {
	
	@Autowired
	private QuestionBoardService questionBoardService;
	
	//글쓰기
	@RequestMapping("/question/questionWrite.do")
	public String write (QuestionBoard question) throws Exception{
		questionBoardService.write(question);
		return "redirect:/question/questionList.do";
	}
	
	@RequestMapping("/question/questionWriteForm.do")
	public void writeForm() throws Exception{}
	
	// 수정
	@RequestMapping("/question/questionModify.do")
	public String modify(QuestionBoard questionBoard) throws Exception{
		questionBoardService.modify(questionBoard);
		return "redirect:/question/questionList.do";
	}
	
	@RequestMapping("/question/questionModifyForm.do")
	public ModelAndView modifyForm (int boardNo) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject("questionBoard", questionBoardService.detail(boardNo));
		return mav;
	}
	
	// 상세
	@RequestMapping("/question/questionDetail.do")
	public ModelAndView detail (int boardNo) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject("questionBoard", questionBoardService.detail(boardNo));
		return mav;
	}
		
	//삭제
	@RequestMapping("/question/questionDelete.do")
	public String delete (int boardNo) throws Exception{
		questionBoardService.delete(boardNo);
		return "redirect:/question/questionList.do";
	}
	
	//목록
	@RequestMapping("/question/questionList.do")
	public ModelAndView list (QuestionBoard question) throws Exception{
		List<QuestionBoard> list = questionBoardService.list();
		ModelAndView mav = new ModelAndView();
		mav.addObject("questionList", list);
		return mav;
	}
	
	// 조언 등록
	@RequestMapping("/question/questionAdvice.do")
	public String advice(QuestionBoard question) throws Exception{
		questionBoardService.advice(question);
		return "redirect:/question/questionList.do";
	}
	
	@RequestMapping("/question/questionAdviceForm.do")
	public ModelAndView adviceForm (int boardNo) throws Exception{	
		ModelAndView mav = new ModelAndView();
		mav.addObject("questionAdvice", questionBoardService.detail(boardNo));
		return mav;
	}
	
	// 조언 보기
	@RequestMapping("/question/adviceDetail.do")
	public ModelAndView detailAdvice (int boardNo) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject("questionBoard", questionBoardService.detailAd(boardNo));
		return mav;
	}
	
}
