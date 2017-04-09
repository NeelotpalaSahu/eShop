package com.demoproject.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demoproject.dao.CartItemDao;
import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;

@Transactional
@Repository
public class CartItemDaoImpl implements CartItemDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCartItem(CartItem cartItem) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(cartItem);
		session.flush();		
	}

	public CartItem getCartitemById(int id) {
		Session session=sessionFactory.getCurrentSession();
		CartItem cartItem=(CartItem)session.get(CartItem.class, id);
		return cartItem;
	}

	public void deleteCartItem(CartItem cartItem) {
		Session session=sessionFactory.getCurrentSession();
		try {
			session.delete(cartItem);
			session.flush();
			} catch (HibernateException e) {
				System.out.println("error while deleting product in cartItemDaoImpl");
			e.printStackTrace();
			session.flush();
			}
	}

	public void deleteAllCartitem(Cart cart) {
		Session session=sessionFactory.getCurrentSession();
		try {
			session.delete(cart);
			session.flush();
			} catch (HibernateException e) {
				System.out.println("error while deleting product in cartDao");
			e.printStackTrace();
			session.flush();
			}
	}

}
