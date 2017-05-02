package com.demoproject.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demoproject.dao.ProductDao;
import com.demoproject.model.Customer;
import com.demoproject.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void addProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		try {
			session.saveOrUpdate(product);
			System.out.println("product added successfully");
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			System.out.println("error in productdaoimpl");
			e.printStackTrace();
		}
		
	}
	public Product getProductById(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class, id);
		return product;
	}
	public List<Product> getAllProducts() {
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");
	    List<Product> productList = query.list();
	
		return productList;
	}
	public void updateProduct(Product product) {
		System.out.println("Got product with id "+product.getProductId());
		Session session=sessionFactory.getCurrentSession();
		try {
			session.update(product);
			session.flush();
			
		} catch (HibernateException e) {
			System.out.println("error while updating  product in productdaoimpl");
			e.printStackTrace();
			session.flush();
			
		}
	}
	public void deleteProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		try {
			session.delete(product);
			session.flush();
			} catch (HibernateException e) {
				System.out.println("error while deleting product in productDaoImpl");
			e.printStackTrace();
			session.flush();
			}
	}
	public Product getProductByName(String productName) {
		 Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from Product where productName = ?");
	        query.setString(0, productName);

	        return (Product) query.uniqueResult();
	}

}
