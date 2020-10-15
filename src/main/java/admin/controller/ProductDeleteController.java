package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.ProductDao;

@Controller
public class ProductDeleteController {
	
	final String command ="delete.prd";
	final String gotoPage = "redirect:/list.prd";
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping(command) 
	public String doAction(@RequestParam(value="pnum") int pnum,
			@RequestParam(value="pageNumber",required = true) int pageNumber){
		
		productDao.deleteProduct(pnum);
		
		return gotoPage+"?pageNumber="+pageNumber;
	}

}
