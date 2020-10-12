package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CateListController {

	final String command = "list.cate";
	final String getPage = "admin_CateList_4";
	
	@RequestMapping(command)
	public ModelAndView doAction() {
		
		ModelAndView mav = new ModelAndView(); 
		
		mav.setViewName(getPage);
		return mav;
	}
}
