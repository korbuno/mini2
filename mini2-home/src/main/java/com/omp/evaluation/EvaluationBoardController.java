package com.omp.evaluation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.omp.repository.domain.EvaluationBoard;
import com.omp.repository.service.EvaluationBoardService;

@Controller
public class EvaluationBoardController {
	
	@Autowired
	private EvaluationBoardService evaluationBoardService;
	
	
	@RequestMapping("/evaluation/evaluationWrite.do")
	public String write(EvaluationBoard evaluation) throws Exception{
		evaluationBoardService.write(evaluation);
		return "redirect:/evaluation/evaluationList.do";
	}
	
	@RequestMapping("/evaluation/evaluationWriteForm.do")
	public void writeForm() throws Exception{}
	
	
	@RequestMapping("/evaluation/evaluationDelete.do")
	public String delete (int boardNo) throws Exception{
		evaluationBoardService.delete(boardNo);
		return "redirect:/evaluation/evaluationList.do";
	}
	
	@RequestMapping("/evaluation/evaluationModify.do")
	public String modify (EvaluationBoard evaluationBoard) throws Exception{
		evaluationBoardService.modify(evaluationBoard);
		return "redirect:/evaluation/evaluationList.do";
	}
	
	@RequestMapping("/evaluation/evaluationModifyForm.do")
	public ModelAndView modifyForm (int boardNo) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject("evaluationBoard", evaluationBoardService.detail(boardNo));
		return mav;
	}
	
	@RequestMapping("/evaluation/evaluationDetail.do")
	public ModelAndView detail(int boardNo) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject("evaluationBoard", evaluationBoardService.detail(boardNo));
		return mav;
		
	}
	
	@RequestMapping("/evaluation/evaluationList.do")
	public ModelAndView list() throws Exception{
		List<EvaluationBoard> list = evaluationBoardService.list();
		ModelAndView mav = new ModelAndView();
		mav.addObject("evaluationList", list);
		return mav;
	}
	
	@RequestMapping("/evaluation/evaluationScore.do")
	public ModelAndView score (int boardNo) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject(evaluationBoardService.detail(boardNo));
		return mav;
	}

}
