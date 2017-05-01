package com.demoproject.dao;

import java.util.List;

import com.demoproject.model.CartItem;

public interface CartItemDao {
	
	 void addCartItem(CartItem cartItem);
	
	 CartItem getCartItemByProductId(int productID);
	
	 List<CartItem> getMyCartItems(int cartID);
	 
	 void deleteCartItem(CartItem cartItem);
	
	 void deleteAllCartItems(int cartID);
	 
	 void updateCartItem(CartItem cartItem);

	int getTotalProducts(int cartID);

}
