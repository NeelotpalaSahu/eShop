package com.demoproject.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demoproject.dao.CartItemDao;
import com.demoproject.model.CartItem;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {

	 @Autowired
	 private SessionFactory sessionFactory;

	
	public void addCartItem(CartItem cartItem) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.save(cartItem);
			session.flush();
			System.out.println("CartItem successfully added");
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			System.out.println("Error while adding CartItem in CartItemDaoImpl");
			
			e.printStackTrace();
		}
	}

	public void deleteCartItem(CartItem cartItem) {
		Session session=sessionFactory.getCurrentSession();
		try {
			session.delete(cartItem);
			session.flush();
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			System.out.println("error while deleting  cartItem in CartItemDaoImpl");
			e.printStackTrace();
			session.flush();
			
		}
	}

	public List<CartItem> getMyCartItems(int cartID) {
		
		String hql="from CartItem where cartID = " + "'" + cartID + "'";
		
		@SuppressWarnings({ "rawtypes" })
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings({ "unchecked" })
		List<CartItem> list=query.list();
		if(list==null || list.isEmpty())
		{
			System.out.println("No item found with this CartID");
			return null;
		}
		else
		{
			System.out.println(list.size()+" items found with this CartID");
			
			return list;
		}
	}

	public void deleteAllCartItems(int cartID) {
		// TODO Auto-generated method stub
		
	}

	public void updateCartItem(CartItem cartItem) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.update(cartItem);
			session.flush();
			System.out.println("CartItem successfully updated");
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			System.out.println("Error while updating CartItem in CartItemDaoImpl");
			
			e.printStackTrace();
		}
	}

	public CartItem getCartItemByProductId(int productID) {
String hql="from CartItem where productID = " + "'" + productID + "'";
		
		@SuppressWarnings({ "rawtypes" })
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings({ "unchecked" })
		List<CartItem> list=query.list();
		if(list==null || list.isEmpty())
		{
			System.out.println("No item found with this productID");
			return null;
		}
		else
		{
			return list.get(0);
		}
	}

	
}
