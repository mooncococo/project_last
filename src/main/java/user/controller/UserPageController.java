package user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admin.model.Product;
import admin.model.ProductDao;


@Controller
public class UserPageController {
	
	final String command="user.uspage";
	final String getPage="user_main_4";
	
	 @Autowired 
	 ProductDao productDao;
	 
	@RequestMapping(value=command,method=RequestMethod.GET )
	public ModelAndView doAction() {
		
		ModelAndView mav = new ModelAndView();
		
		List<Product> lists = productDao.selectNewProduct();
		mav.addObject("lists", lists);
		mav.setViewName(getPage);
		return mav; 
	}
}
