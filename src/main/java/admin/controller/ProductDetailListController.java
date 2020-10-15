package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.model.Category;
import admin.model.ProductDetail;
import admin.model.ProductDetailDao;
import utility.Paging;

@Controller
public class ProductDetailListController {
	final String command="detailList.detail";
	final String getPage="admin_ProductDetailList_4";
	
	@Autowired
	private ProductDetailDao productDetailDao;
	
	@RequestMapping(command) 
	public ModelAndView doAction(@RequestParam(value="whatColumn", required = false) String whatColumn,
			@RequestParam(value="keyword", required = false) String keyword,
			@RequestParam(value="pageNumber", required = false) String pageNumber,
			@RequestParam(value="pageSize", required = false) String pageSize,
			HttpServletRequest request) {		
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("whatColumn",whatColumn); //whatColumn=title
		map.put("keyword", "%"+keyword+"%"); //keyword=%³¯%
		
		int totalCount = productDetailDao.getTotalCount(map); 
		System.out.println("totalCount : " + totalCount);
		
		String url = request.getContextPath() +"/" +command ;
		System.out.println("url : " + url);// /ex/list.tv
		  
		Paging pageInfo = new Paging(pageNumber,pageSize,totalCount,url,whatColumn,keyword);
		
		System.out.println("offset : " + pageInfo.getOffset()); // 0
		System.out.println("limit : " + pageInfo.getLimit()); // 5	
		
		List<ProductDetail> lists =productDetailDao.selectDetailAll(pageInfo,map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("totalCount", totalCount); 
		mav.addObject("lists", lists);
		mav.setViewName(getPage);
		return mav;
	
	}	
	
}
