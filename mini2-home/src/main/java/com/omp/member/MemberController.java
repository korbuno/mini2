package com.omp.member;

import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.domain.Member;
import com.omp.repository.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/main.do")
	public String main() throws Exception {
		return "member/main";
	}
	
	@RequestMapping("/login.do")
	public String login(Model model) throws Exception {
		return "member/login";
	}
	
	@ResponseBody
	@RequestMapping("/login.json")
	public boolean loginAjax(Member member, boolean chk, HttpServletRequest request, HttpServletResponse response) throws Exception {
		member = memberService.login(member);
		if (member != null) {
			Cookie c = new Cookie("id", null);
			c.setMaxAge(0);
			
			if (chk) {
				c = new Cookie("id", URLEncoder.encode(member.getId(), "utf-8"));
				c.setMaxAge(60*60*24);
				response.addCookie(c);
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("user", member);
			
			return true;
		} else {
			logout(request);
			return false;
		}
	}
	
	@ResponseBody
	@RequestMapping("/logout.json")
	public void logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
	}

	@ResponseBody
	@RequestMapping("/main.json")
	public boolean mainAjax(String id) throws Exception {
		if (memberService.jungBok(id) == null)
			return true;
		else
			return false;
	}

}
