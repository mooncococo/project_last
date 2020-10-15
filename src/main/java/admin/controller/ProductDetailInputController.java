package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.model.Product;
import admin.model.ProductDao;
import admin.model.ProductDetail;
import admin.model.ProductDetailDao;

@Controller
public class ProductDetailInputController {

	final String command ="detail.detail";
	final String getPage ="admin_ProductDetailInputForm_4";
	final String gotoPage = "redirect:/detailList.detail";
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private ProductDetailDao productDetailDao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(@RequestParam(value="pnum") int pnum,Model model) {
			  
		Product product = productDao.getOneProduct(pnum);
		
		model.addAttribute("product", product);
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(ProductDetail productDetail) {
		
		ModelAndView mav = new ModelAndView();
		productDetailDao.insertDetail(productDetail);
		
		mav.setViewName(gotoPage);
		return mav;
	}
	
	
	
}
