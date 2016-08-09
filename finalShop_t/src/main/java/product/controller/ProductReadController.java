package product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import product.dto.ProductCommentDTO;
import product.dto.ProductDTO;
import product.service.ProductCommentService;
import product.service.ProductService;

@Controller
public class ProductReadController {
	@Autowired
	ProductService service;
	@Autowired
	ProductCommentService commentService;
	@RequestMapping(value = "/product/read.do", method = RequestMethod.GET)
	public ModelAndView showPage(String prdNo){
		ModelAndView mav = new ModelAndView();
		String view = "";
		ProductDTO product = service.readPro(prdNo);
		List<ProductCommentDTO> commentList = 
					commentService.commentlist(prdNo);
		mav.addObject("comment",commentList);
		mav.addObject("prd", product);
		mav.setViewName("product/read");
		return mav;
	}
}
