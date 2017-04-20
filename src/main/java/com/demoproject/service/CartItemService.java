package com.demoproject.service;

import java.util.List;

import com.demoproject.model.CartItem;

public interface CartItemService {
	
	void addCartItem(CartItem cartItem);
	
	 void deleteCartItem(CartItem cartItem);
	
	 List<CartItem> getMyCartItems(int cartID);
	
	 void deleteAllCartItems(int cartID);
	 
	 void updateCartItem(CartItem cartItem);

	 CartItem getCartItemByProductId(int productID);
	 

}
