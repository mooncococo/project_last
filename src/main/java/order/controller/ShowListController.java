package order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShowListController {
    
    final String command = "showList.od";
    final String getPage = "showList";
    
    @RequestMapping(command)
    public String doAction() {
	
	System.out.println("list 들어온다");
	
	return getPage;
    }
    	
}
