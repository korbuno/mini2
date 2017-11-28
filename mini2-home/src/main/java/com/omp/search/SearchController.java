package com.omp.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.Board;
import com.omp.repository.domain.Search;
import com.omp.repository.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired
	private SearchService searchService; // 자동으로 주입

	@ResponseBody
	@RequestMapping("/search.json")
	public List<Board> searchList(Search search) throws Exception {
		return searchService.searchBoard(search);
	}
}
