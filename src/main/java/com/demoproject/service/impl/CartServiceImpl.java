package com.demoproject.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demoproject.dao.CartDao;
import com.demoproject.model.Cart;
import com.demoproject.service.CartService;

@Service
public class CartServiceImpl implements CartService{

	@Autowired 
	private CartDao cartDao;
	
	public void updateCart(Cart cart) {
		cartDao.updateCart(cart);
		
	}

	public Cart getCart(int customerID) {
		return cartDao.getCart(customerID);
	}

	public void deleteCartById(int cartId) {
		//cartDao.deleteCartById(cartId);
		
	}

}
