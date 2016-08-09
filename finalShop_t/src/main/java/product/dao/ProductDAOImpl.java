package product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import product.dto.ProductDTO;

@Repository("productdao")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SqlSession sqlsession;

	@Override
	public List<ProductDTO> productlist(String category) {
		return sqlsession.selectList("shop.product.list", category);
	}

	@Override
	public List<ProductDTO> searchTopProduct() {
		System.out.println("dao");
		List<ProductDTO> list = sqlsession.selectList("shop.product.toplist");
		System.out.println(list.size());
		return list;
	}

	@Override
	public ProductDTO readPro(String prdNo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne("shop.product.read",prdNo);
	}
}
