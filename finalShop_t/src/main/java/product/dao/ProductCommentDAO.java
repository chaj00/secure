package product.dao;

import java.util.List;

import product.dto.ProductCommentDTO;
import product.dto.ProductCommentResultDTO;

public interface ProductCommentDAO {
	List<ProductCommentDTO> commentlist (String prdNo);
	void writeComment(ProductCommentDTO article);
	List<ProductCommentResultDTO> showResult();
	
}