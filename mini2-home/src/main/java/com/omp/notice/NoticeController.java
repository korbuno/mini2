package com.omp.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.common.Page;
import com.omp.common.PageResult;
import com.omp.repository.domain.Board;
import com.omp.repository.domain.CommentBoard;
import com.omp.repository.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeService noticeService; // 자동으로 주입

	@RequestMapping("/list.do")
	public String main(Model model, int pageNo) throws Exception {
		model.addAttribute("list" , noticeService.list(new Page(pageNo)));
		model.addAttribute("pageResult" , new PageResult(pageNo, noticeService.count()));
		return "/notice/list";
	}
	
	@ResponseBody
	@RequestMapping("/commentList.json")
	public void commentList(Model model, int boardNo) throws Exception {
		model.addAttribute("commentList", noticeService.commentList(boardNo));
	}

	@RequestMapping("/delete.do")
	public String delete(int boardNo) throws Exception {
		noticeService.delete(boardNo);
		
		return "/main/main";
	}
	
	@ResponseBody
	@RequestMapping("/update.json")
	public String update(Board board) throws Exception {
		noticeService.update(board);
		return "/main/main";
	}
	
	@ResponseBody
	@RequestMapping("/commentInsert.json")
	public String commentInsert(CommentBoard commentBoard) throws Exception {
		noticeService.commentInsert(commentBoard);
		return "/main/main";
	}
}
