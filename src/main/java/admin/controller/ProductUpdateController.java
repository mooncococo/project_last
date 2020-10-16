package admin.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import admin.model.Category;
import admin.model.Product;
import admin.model.ProductDao;

@Controller
public class ProductUpdateController {
	
	final String command= "update.prd";
	final String getPage= "admin_ProductUpdateForm_4";
	final String gotoPage = "redirect:/list.prd";
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(@RequestParam(value="pnum") int pnum,Model model) {
		
		Product product = productDao.getOneProduct(pnum);
		model.addAttribute("product", product);
		return getPage;
	}
	
	@RequestMapping(value=command , method = RequestMethod.POST)
	public ModelAndView doAction(@RequestParam("pageNumber") int pageNumber,
								@RequestParam("pageSize") int pageSize,
								@Valid Product product,
								BindingResult result) {
		
		
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()) {
			mav.addObject("pageNumber", pageNumber);
			mav.addObject("pageSize", pageSize);
			mav.setViewName(getPage); //updateForm갈때
			return mav;
		}
		String uploadPath = servletContext.getRealPath("/resources");
		System.out.println("uploadPath : "+uploadPath);
		//C:\SpringWorkspace_kkh\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\15_MyBatis_Products\resources\a.jpg
		System.out.println("새로 선택한 화일명 : "+product.getPimage());
		File file = new File(uploadPath+ File.separator +product.getPimage());
		
		File deFile = new File(uploadPath+ File.separator +product.getUploadOld());
		deFile.delete();
		
		MultipartFile multi = product.getUpload();
		try {
			multi.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		int cnt = productDao.updateProduct(product); 
		if(cnt>0) {
			mav.setViewName(gotoPage+"?pageNumber="+pageNumber+"&pageSize="+pageSize);
			//redirect:/list.ab?pageNumber=pageNumber&pageSize=pageSize 이런식으로 넘겨야한다
		}else {
			mav.setViewName(getPage);
		}
		return mav;
	
	}
	
}	
