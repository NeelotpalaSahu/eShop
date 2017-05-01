package com.demoproject.service;

import com.demoproject.model.Cart;

public interface CartService {

	 void updateCart(Cart cart);
	 
	 Cart getCart(int customerID);
		
	 void deleteCartById(int cartId);
		
}
