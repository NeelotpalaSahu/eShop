package com.demoproject.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demoproject.dao.CartDao;
import com.demoproject.model.Cart;
import com.demoproject.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartDao cartDao;

	public Cart getCartById(int id) {
		
		return cartDao.getCartById(id);
	}

}
