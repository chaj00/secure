package product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import product.dao.ProductDAO;
import product.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	@Qualifier("productdao")
	ProductDAO dao;
	
	@Override
	public List<ProductDTO> productlist(String category) {
		return dao.productlist(category);
	}

	@Override
	public List<ProductDTO> searchTopProduct() {
		System.out.println("service");
		return dao.searchTopProduct();
	}

	@Override
	public ProductDTO readPro(String prdNo) {
		// TODO Auto-generated method stub
		return dao.readPro(prdNo);
	}
}
