package admin.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.model.ProductDetail;
import admin.model.ProductDetailDao;

@Controller
public class ProductDetailUpdateController {
		
	final String command = "update.detail";
	final String getPage="admin_ProductDetailUpdateForm_4";
	final String gotoPage="redirect:/detaillist.detail";
			
	@Autowired
	private ProductDetailDao productDetailDao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(@RequestParam(value="dnum",required = true) int dnum,
							Model model) {
	
			
		ProductDetail productDetail = productDetailDao.getOneProductDetail(dnum);
		model.addAttribute("productDetail", productDetail);
		
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(@RequestParam("pageNumber") int pageNumber,
			@RequestParam("pageSize") int pageSize,
			@Valid ProductDetail productDetail, BindingResult result) {
			ModelAndView mav = new ModelAndView();
				
		
		if(result.hasErrors()) {
			System.out.println("update 오류 발생");
			mav.setViewName(getPage);
			return mav;
		}
			
		int cnt = productDetailDao.UpdateProductDetail(productDetail);
	
		if(cnt>0) {
			mav.setViewName(gotoPage+"?pageNumber="+pageNumber+"&pageSize="+pageSize);
			//redirect:/list.ab?pageNumber=pageNumber&pageSize=pageSize 이런식으로 넘겨야한다
		}else {
			mav.setViewName(getPage);
		}
		return mav;
		
	}

	
	
	
}
