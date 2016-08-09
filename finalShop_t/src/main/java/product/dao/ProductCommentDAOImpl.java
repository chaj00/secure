package product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import product.dto.ProductCommentDTO;
import product.dto.ProductCommentResultDTO;
@Repository("productcommentdao")
public class ProductCommentDAOImpl implements ProductCommentDAO {
	@Autowired
	SqlSession sqlsession;
	@Override
	public List<ProductCommentDTO> commentlist(String prdNo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("product.comment.list",prdNo);
	}

	@Override
	public void writeComment(ProductCommentDTO article) {
		sqlsession.insert("product.comment.insert", article);

	}

	@Override
	public List<ProductCommentResultDTO> showResult() {
		// TODO Auto-generated method stub
		return sqlsession.selectList("product.comment.result");
	}

}
