package com.omp.study;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.ClassBoard;
import com.omp.repository.domain.Study;
import com.omp.repository.service.StudyService;

@Controller
@RequestMapping("/study")
public class StudyController {

	@Autowired
	private StudyService studyService; // 자동으로 주입

	@RequestMapping("/main.do")
	public String main() throws Exception {
		return "study/main";
	}
	
	@RequestMapping("/day.do")
	public String day(
	@RequestParam(defaultValue = "0") String day, Model model) throws Exception {
		if(day.equals("0") || Integer.parseInt(day) <= 100000) model.addAttribute("msg", "유효하지 않은 날짜입니다.");
		else {
			day = day.substring(0, 2)+"/"+day.substring(2, 4)+"/"+day.substring(4, 6);
			List<Study> list = studyService.dayTitleList(day);
			for (Study s : list) {
				s.setList(studyService.classBoardList(s.getClassNo()));
			}
			model.addAttribute("list", list);
		}
		return "study/day";
	}
	
	@ResponseBody
	@RequestMapping("/main.json")
	public Map<String, Study> mainAjax(String date) throws Exception {
		if(date == null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yy/MM");
			date = sdf.format(new Date());
		}
		List<Study> list = studyService.monthTitleList(date);
		Map<String, Study> map  = new HashMap<>(); 
		for (Study s : list) {
			map.put(s.getClassRegDate(), s);
		}
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/insert.json")
	public Map<String, Integer> insert(Study study, ClassBoard board) throws Exception {
		board.setWriter("작성자");
		board.setMemberNo(1);
		int no = studyService.classNo();
		int boardNo = studyService.classBoardNo();
		board.setClassNo(no);
		board.setBoardNo(boardNo);
		board.setTitle("예시");
		study.setClassNo(no);
		String day = study.getClassRegDate();
		study.setClassRegDate(day.substring(0, 2)+"/"+day.substring(2, 4)+"/"+day.substring(4, 6));
		studyService.titleInsert(study);
		studyService.classBoardInsert(board);
		Map<String, Integer> map = new HashMap<>();
		map.put("no", no);
		map.put("boardNo", boardNo);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/titleInsert.json")
	public int titleInsert(Study study) throws Exception {
		int no = studyService.classNo();
		study.setClassNo(no);
		studyService.titleInsert(study);
		return no;
	}
	
	@ResponseBody
	@RequestMapping("/titleUpdate.json")
	public void titleUpdate(Study study) throws Exception {
		studyService.titleUpdate(study);
	}
}
