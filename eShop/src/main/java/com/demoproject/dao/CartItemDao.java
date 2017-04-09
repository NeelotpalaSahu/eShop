package com.demoproject.dao;

import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;

public interface CartItemDao {

	void addCartItem(CartItem cartItem);
	
	CartItem getCartitemById(int id);
	void deleteCartItem(CartItem cartItem);
	void deleteAllCartitem(Cart cart);
}
