package member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberDuplicationController {
	final String command = "/duplication.me";
	final String getPage = "MemberRegisterForm";
	
	@Autowired
	MemberDao memberDao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public ModelAndView doAction(@RequestParam(value="mid", required = true) String mid,
							HttpServletRequest request) {
		
		List<Member> lists = memberDao.getDuplicateId(mid);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists",lists);
		mav.setViewName(getPage);
		
		return mav;
	}
}
