package admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.model.Product;
import admin.model.ProductDao;
import admin.model.ProductDetail;
import admin.model.ProductDetailDao;

@Controller
public class useProductDetailController {			//user페이지에서 상품 클릭시 상품상세보기 화면이동하는 컨트롤러

	final String command = "/detail.userdetail";
	final String command2 = "/color.userdetail";
	final String getPage = "user_productDetail";
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	ProductDetailDao productDetailDao;
	
	
	@RequestMapping(command)
	public ModelAndView doAction(@RequestParam(value="pnum",required=true) int pnum) {
		
		System.out.println("pnum: "+pnum);
		
		
		Product product = productDao.getOneProduct(pnum);
		List<ProductDetail> lists = productDetailDao.getProductsByPnum(pnum);
		List<ProductDetail> colorLists = productDetailDao.getDistinctColor();  
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("product", product); 
		mav.addObject("lists", lists);
		mav.addObject("colorLists", colorLists);
		
		mav.setViewName(getPage);
		return mav;
		
	}
	
	@RequestMapping(command2)
	public String doAction(@RequestParam(value="pname",required=true) String pname,
							@RequestParam(value="pcolor",required=true) String pcolor
			) {
		System.out.println("pname:"+pname);
		System.out.println("pcolor:"+pcolor);
		return getPage;
		
	}
	
	
	
	
	
}
