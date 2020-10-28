package cart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.model.Product;
import admin.model.ProductDao;

@Controller
public class CartListController {
	
	final String command = "cartlist.cart";
	final String getPage = "user_cart";
	
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(HttpServletRequest request, Model model) {
		String pset = request.getParameter("pset");
		String qty	 = request.getParameter("qty");
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		
		System.out.println("-----CartListController :cartlist 요청 들어옴 -----");
		//System.out.println("ProductDao_pset:"+pset);
		//System.out.println("ProductDao_qty:"+qty);
		//System.out.println("ProductDao_pnum:"+pnum);
		
		
		String[] psetSlice = pset.split(" ");
		for(int i=0; i<psetSlice.length; i++) {
			System.out.println("psetSlice["+i+"]:"+psetSlice[i]);
		}
		
		String[] qtySlice = qty.split(",");
		for(int i=0; i<qtySlice.length; i++) {
			System.out.println("qtySlice["+i+"]:"+qtySlice[i]);
			
		}
		
		/*
		 * int qtySliceInt ; for(int i=0; i<qtySlice.length; i++) { qtySliceInt =
		 * Integer.parseInt(qtySlice[i]); }
		 */
		
		Product product = productDao.getOneProduct(pnum);
		model.addAttribute("product", product);
		return getPage;
		
		
		
	}

}
