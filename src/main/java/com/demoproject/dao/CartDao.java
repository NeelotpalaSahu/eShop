package com.demoproject.dao;

import com.demoproject.model.Cart;

public interface CartDao {

    void updateCart(Cart cart);
	 
	Cart getCart(int customerID);
	
	void deleteCartById(int cartId);
	
}
