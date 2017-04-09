package com.demoproject.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demoproject.dao.CartItemDao;
import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;
import com.demoproject.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;
	
	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
	}

	public CartItem getCartitemById(int id) {
		return cartItemDao.getCartitemById(id);
	}

	public void deleteCartItem(CartItem cartItem) {
		cartItemDao.deleteCartItem(cartItem);
		
	}

	public void deleteAllCartitem(Cart cart) {
		cartItemDao.deleteAllCartitem(cart);
	}

}
