package com.demoproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demoproject.dao.ProductDao;
import com.demoproject.model.Product;
import com.demoproject.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	public void addProduct(Product product) {
		productDao.addProduct(product);
		
	}

	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}

	public void deleteProduct(Product product) {
		productDao.deleteProduct(product);
		
	}

	public Product getProductByName(String productName) {
		return productDao.getProductByName(productName);
	}

}
