package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberLoginController {
	final String command = "/loginForm.me";
	final String command2 = "/findId.me";
	final String command3 = "/findPw.me";
	final String getPage = "MemberLoginForm";
	final String getPage2 = "MemberFindId";
	final String getPage3 = "MemberFindPw";
	
	@Autowired
	MemberDao memberDao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(Member member, HttpServletResponse response,
							HttpSession session) throws IOException {
		Member dbMember = memberDao.getMembers(member.getMid());
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw = response.getWriter();
		
		if(dbMember == null) {
			pw.println("<script type='text/javascript'>");
			pw.println("alert('해당 회원은 존재하지 않습니다.');");
			pw.println("</script>");
			pw.flush();
			
			return new ModelAndView(getPage);
		}
		else if(member.getMpw().equals(dbMember.getMpw())){
			session.setAttribute("loginInfo", dbMember);
			
			return new ModelAndView((String) session.getAttribute("destination"));
		}
		else {
			pw.println("비밀번호가 일치합니다");
			pw.flush();
			return new ModelAndView(getPage);
		}
	
	}
	
	
	@RequestMapping(command2)
	public String doAction2() {
		
		return getPage2;
	}
	
	@RequestMapping(command3)
	public String doAction3() {
		
		return getPage3;
	}
	
	
	
	
	
}
