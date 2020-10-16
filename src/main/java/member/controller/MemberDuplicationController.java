package member.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberDuplicationController {
	final String command = "/duplication.me";
	final String getPage = "MemberRegisterForm";

	@Autowired
	MemberDao memberDao;

	@RequestMapping(value = command, method = RequestMethod.POST)
	@ResponseBody
	public String doAction(@RequestParam(value = "checkId", required = true) String checkId,
			@RequestParam(value = "mid", required = false) String mid) {

		int cnt = memberDao.getDuplicateId(checkId);
		System.out.println("cnt:"+cnt);
		String str = "";
		
		if(cnt==0) {
			str="YES";
		}
		else if(cnt==1){
			str="NO";
		}
		/*
		for (int i = 0; i < list.size(); i++) {
			System.out.println("list:" + list.get(i).getMid());

			if (list.get(i).getMid().equals(checkId)) {
				str="NO";
				// checkId가 DB와 같은 아이디가있으면 NO
			} else {
				str="YES";
				// checkId가 DB와 같은 아이디가 없으면 YES } }
			}
		}
		 */
		System.out.println("checkId:" + checkId);
		System.out.println("str:" + str);

		
		
		return str;
	}
}
