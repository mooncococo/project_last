package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserPageController {
	final String command="user.page";
	final String getPage="/admin_main_4";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
}
