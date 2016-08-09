package product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import product.dto.ProductCommentResultDTO;
import product.service.ProductCommentService;

@Controller
public class ProductCommentResultController {
	@Autowired
	ProductCommentService commentService;
	@RequestMapping(value = "/product/commentResult.do", method = RequestMethod.GET)
	public ModelAndView showPage(String prdNo){
		ModelAndView mav = new ModelAndView();
		String view = "";
	
		List<ProductCommentResultDTO> resultList = 
					commentService.showResult();
		mav.addObject("resultList",resultList);
		mav.setViewName("product/commentResult");
		return mav;
	}
}
