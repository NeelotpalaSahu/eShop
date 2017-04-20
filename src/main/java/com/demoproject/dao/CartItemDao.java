package com.demoproject.dao;

import java.util.List;

import com.demoproject.model.CartItem;

public interface CartItemDao {
	
	 void addCartItem(CartItem cartItem);
	
	 CartItem getCartItemByProductId(int productID);
	 
	 void deleteCartItem(CartItem cartItem);
	
	 List<CartItem> getMyCartItems(int cartID);
	
	 void deleteAllCartItems(int cartID);
	 
	 void updateCartItem(CartItem cartItem);

}
