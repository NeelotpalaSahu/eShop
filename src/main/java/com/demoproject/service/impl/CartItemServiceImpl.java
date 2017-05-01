package com.demoproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demoproject.dao.CartItemDao;
import com.demoproject.model.CartItem;
import com.demoproject.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService{

	@Autowired
	private CartItemDao cartItemDao;
	
	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
	}

	public void deleteCartItem(CartItem cartItem) {
		cartItemDao.deleteCartItem(cartItem);
	}

	public List<CartItem> getMyCartItems(int cartID) {
		return cartItemDao.getMyCartItems(cartID);
	}

	public void deleteAllCartItems(int cartID) {
		cartItemDao.deleteAllCartItems(cartID);
		
	}

	public void updateCartItem(CartItem cartItem) {
		cartItemDao.updateCartItem(cartItem);
		
		
	}

	public CartItem getCartItemByProductId(int productID) {
		return cartItemDao.getCartItemByProductId(productID);
	}

	public int getTotalProducts(int cartID) {
		
		return cartItemDao.getTotalProducts(cartID);
	}

}
