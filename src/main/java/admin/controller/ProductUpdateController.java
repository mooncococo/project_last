package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.Product;
import admin.model.ProductDao;

@Controller
public class ProductUpdateController {
	
	final String command="update.prd";
	final String getPage="admin_ProductUpdateForm_4";
	
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(@RequestParam(value="pnum") int pnum,Model model) {
		
		Product product = productDao.getOneProduct(pnum);
		model.addAttribute("product", product);
		return getPage;
	}
	
	
}	
