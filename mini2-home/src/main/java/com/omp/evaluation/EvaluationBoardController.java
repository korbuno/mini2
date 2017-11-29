package com.omp.evaluation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omp.repository.domain.EvaluationBoard;
import com.omp.repository.service.EvaluationBoardService;

@Controller
public class EvaluationBoardController {
	
	@Autowired
	private EvaluationBoardService evaluationBoardService = null;
	
/*	public EvaluationBoardController() {
		evaluationBoardService = new EvaluationServiceImpl();
	}*/
	
	
	@RequestMapping("/evaluation/evaluationWrite.do")
	public String write(EvaluationBoard evaluation) throws Exception{
		evaluationBoardService.write(evaluation);
		return "redirect:/evaluation/evaluationList.do";
	}
	
	@RequestMapping("/evaluation/evaluationwriteForm.do")
	public void writeForm() throws Exception{}
	
	
	@RequestMapping("/evaluation/evaluationDelete.do")
	public void delete (int no) throws Exception{
		evaluationBoardService.delete(no);
	}
	
	@RequestMapping("/evaluation/evaluationModify.do")
	public void modify (EvaluationBoard evaluation) throws Exception{
		evaluationBoardService.modify(evaluation);
	}
	
	@RequestMapping("/evaluation/evaluationModifyForm.do")
	public ModelAndView modifyForm (int no) throws Exception{
		ModelAndView mav = new ModelAndView("/evaluation/evaluationForm.jsp");
		mav.addObject(evaluationBoardService.detail(no));
		return mav;
	}
	
	@RequestMapping("/evaluation/evaluationDetail.do")
	public ModelAndView detail(int no) throws Exception{
		ModelAndView mav = new ModelAndView("/evaluation/evaluationDetail.jsp");
		mav.addObject(evaluationBoardService.detail(no));
		return mav;
		
	}
	
	@RequestMapping("/evaluation/evaluationList.do")
	public ModelAndView list(@RequestParam(name="pageNo", defaultValue="1") int no) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject("evaluationList", evaluationBoardService.list());
		return mav;
	}
}
