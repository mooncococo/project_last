package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.model.Category;

@Controller
public class CateInputController {   //admin에서 카테등록 요청시

	final String command ="input.cate";
	final String getPage ="admin_CateInputForm_4";
	final String gotoPage = "redirect:/list.cate";
	
	@RequestMapping(value=command,method=RequestMethod.GET)
 	public String doAction() {
		
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
 	public String doAction(Category category) {
		
		
		
		return gotoPage;
	}
	
	
}
