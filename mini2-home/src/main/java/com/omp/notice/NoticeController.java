package com.omp.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.omp.repository.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeService noticeService; // 자동으로 주입

	@RequestMapping("/list.do")
	public String main(Model model) throws Exception {
		model.addAttribute("list" ,noticeService.list(6));
		return "/notice/list";
	}
}
