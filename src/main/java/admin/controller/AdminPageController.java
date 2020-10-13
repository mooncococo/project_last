package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPageController {
	final String command="admin.page";
	final String getPage="/admin_main_4";
	
	final String command2="user.page";
	final String getPage2="/user_main_4";
	
	@RequestMapping(command)
	public String doAction() {
		
		return getPage;
	}
	
	
	@RequestMapping(command2)
	public String doAction2() {
		
		return getPage2;
	}
	
	
	
	
}
