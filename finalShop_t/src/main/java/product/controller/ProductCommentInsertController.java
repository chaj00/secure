package product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import product.dto.ProductCommentDTO;
import product.service.ProductCommentService;

@Controller
public class ProductCommentInsertController {
	@Autowired
	ProductCommentService service;
	@RequestMapping("/product/comment/insert.do")
	public String insertComment(ProductCommentDTO article){
		service.writeComment(article);
		
		return "redirect:/product/read.do?prdNo="+article.getPrd_no();
	}
	
}
