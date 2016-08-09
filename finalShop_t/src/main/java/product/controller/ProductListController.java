package product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import product.dto.ProductDTO;
import product.service.ProductService;

@Controller
public class ProductListController {
	@Autowired
	ProductService service;

	@RequestMapping(value = "/product/list.do", method = RequestMethod.GET)
	public ModelAndView prdList(String category) {
		ModelAndView mav = new ModelAndView();
		String view = "";
		if (category==null) {
			System.out.println("not null");
			List<ProductDTO> toplist = service.searchTopProduct();
			mav.addObject("toplist", toplist);
			view = "index";
			category="%";
		}else{
			view = "product/list";
		}
		List<ProductDTO> list = service.productlist(category);
		mav.addObject("prdlist", list);
		System.out.println(view);
		mav.setViewName(view);
		return mav;
	}
}