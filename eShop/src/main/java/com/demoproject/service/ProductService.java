package com.demoproject.service;

import java.util.List;

import com.demoproject.model.Product;

public interface ProductService {
	void addProduct(Product product);
	void updateProduct(Product product);
	void deleteProduct(Product product);
	Product getProductById(int id);
	List<Product> getAllProducts();
	
}
