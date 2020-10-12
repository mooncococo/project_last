package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductInputController {  //admin에서 상품등록 요청시

		final String command ="input.prd";
		final String getPage ="admin_ProductInputForm_4";
		final String gotoPage = "redirect:/list.prd";
		
		@RequestMapping(value=command,method = RequestMethod.GET)
		public String doAction() {
			
			return getPage;
		}
		
		
	
}
