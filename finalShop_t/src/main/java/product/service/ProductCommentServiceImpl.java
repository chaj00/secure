package product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import product.dao.ProductCommentDAO;
import product.dto.ProductCommentDTO;
import product.dto.ProductCommentResultDTO;
@Service
public class ProductCommentServiceImpl implements ProductCommentService {
	@Autowired
	@Qualifier("productcommentdao")
	ProductCommentDAO dao;
	@Override
	public List<ProductCommentDTO> commentlist(String prdNo) {
		return dao.commentlist(prdNo);
	}

	@Override
	public void writeComment(ProductCommentDTO article) {
		dao.writeComment(article);

	}

	@Override
	public List<ProductCommentResultDTO> showResult() {
		// TODO Auto-generated method stub
		return dao.showResult();
	}

}
