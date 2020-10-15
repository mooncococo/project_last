package user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserPageController {
	final String command="user.uspage";
	final String getPage="/user_main";
	
	@RequestMapping(value=command,method=RequestMethod.GET )
	public String doAction() {
		
		return getPage;
	}
}
