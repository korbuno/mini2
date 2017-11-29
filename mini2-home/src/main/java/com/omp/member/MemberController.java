package com.omp.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.omp.repository.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService; // 자동으로 주입
	
	/*@Autowired
	private JavaMailSender mailSender;

	public void sendMail(String from, String to, String subject, String text, String formUrl)
			throws FileNotFoundException, URISyntaxException {
		try {
			MimeMessage message = mailSender.createMimeMessage();

			message.setFrom(new InternetAddress(from));
			message.addRecipient(RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);
			message.setText(text, "utf-8", "html");

			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/

	@RequestMapping("/main.do")
	public String main(Model model) throws Exception {
		return "member/main";
	}
	
	@ResponseBody
	@RequestMapping("/main.json")
	public boolean mainAjax(String id) throws Exception {
		if (memberService.jungBok(id) == null) return true;
		else return false;
	}

}
