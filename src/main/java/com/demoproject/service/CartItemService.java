package com.demoproject.service;

import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;

public interface CartItemService {

	void addCartItem(CartItem cartItem);
	CartItem getCartitemById(int id);
	void deleteCartItem(CartItem cartItem);
	void deleteAllCartitem(Cart cart);
}
