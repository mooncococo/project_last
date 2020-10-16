package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberLoginController {
	final String command = "/loginForm.me";
	final String command1 = "/loginForm1.me";
	final String command2 = "/findId.me";
	final String command3 = "/findPw.me";
	final String getPage = "MemberLoginForm";
	final String getPage2 = "MemberFindId";
	final String getPage3 = "MemberFindPw";
	final String gotoPage1 = "../../start_4";
	final String gotoPage2 = "MemberFindIdCompleted";
	final String gotoPage3 = "MemberFindPwCompleted";
	
	
	@Autowired
	MemberDao memberDao;
	
	//로그인 아이콘 클릭해서 로그인폼으로 넘어가는 경우
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	//아이디or비밀번호찾기 한 후 해당id들고 로그인폼으로 넘어가는 경우
	@RequestMapping(value=command1)	
	public ModelAndView doAction1(@RequestParam(value="mid") String mid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("mid",mid);
		mav.setViewName(getPage);
		return mav;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(Member member, HttpServletResponse response,
							HttpSession session) throws IOException {
		
		Member dbMember = memberDao.getMember(member.getMid());
		
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
			
			return new ModelAndView(gotoPage1);
		}
		else {
			pw.println("<script type='text/javascript'>");
			pw.println("alert('비밀번호가 일치하지 않습니다.');");
			pw.println("</script>");
			pw.flush();
			return new ModelAndView(getPage);
		}
	
	}
	
	@RequestMapping(value=command2,method=RequestMethod.GET)
	public String doAction2() {
		return getPage2;
	}
	
	@RequestMapping(value=command2,method=RequestMethod.POST)
	public ModelAndView doAction2(@RequestParam(value="name") String name, 
							@RequestParam(value="hp1") String hp1,
							@RequestParam(value="hp2") String hp2,
							@RequestParam(value="hp3") String hp3,
							@RequestParam(value="email1") String email1,
							@RequestParam(value="email2") String email2) {
		
		ModelAndView mav = new ModelAndView();
		
		if(hp3.equals("")) {	
			System.out.println("이메일로 id 찾기 선택");
			Member member = memberDao.findIdByEmail(name,email1,email2);
			
			mav.addObject("member",member);
			mav.setViewName(gotoPage2);
			return mav;  
		} 
		else {
			System.out.println("핸드폰번호로 id 찾기 선택");
			Member member = memberDao.findIdByHp(name,hp1,hp2,hp3);
			
			mav.addObject("member",member);
			mav.setViewName(gotoPage2);
			return mav;  
			
		} 
	}
	
	@RequestMapping(value=command3,method=RequestMethod.GET)
	public String doAction3() {
		return getPage3;
	}
	
	
	@RequestMapping(value=command3,method=RequestMethod.POST)
	public ModelAndView doAction3(@RequestParam(value="name") String name, 
							@RequestParam(value="id") String id,
							@RequestParam(value="hp1") String hp1,
							@RequestParam(value="hp2") String hp2,
							@RequestParam(value="hp3") String hp3,
							@RequestParam(value="email1") String email1,
							@RequestParam(value="email2") String email2) {
		//System.out.println("name: " +name);
		//System.out.println("hp3: " +hp3);
		//System.out.println("email2: " +email2);
		
		ModelAndView mav = new ModelAndView();
		
		if(hp3.equals("")) {	
			System.out.println("이메일로 pw 찾기 선택");
			Member member = memberDao.findPwByEmail(name,id,email1,email2);
			    
			mav.addObject("member",member);
			mav.setViewName(gotoPage3);
			return mav;  
		}
		else {
			System.out.println("핸드폰번호로 pw 찾기 선택");
			Member member = memberDao.findPwByEmail(name,id,hp1,hp2,hp3);
			  
			mav.addObject("member",member);  
			mav.setViewName(gotoPage3);
			return mav;   
			
		}
	}
	
	
}