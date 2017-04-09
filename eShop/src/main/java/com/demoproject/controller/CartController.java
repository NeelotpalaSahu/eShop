package com.demoproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;
import com.demoproject.model.Product;
import com.demoproject.service.CartItemService;
import com.demoproject.service.CartService;
import com.demoproject.service.ProductService;

@Controller
public class CartController {

	/*	@Autowired*/
	private CartItemService cartItemService;
	
	
	@RequestMapping("/getCartById")
	public String getCartById(@PathVariable("id") int id, Model model){
		CartItem cartItem=cartItemService.getCartitemById(id);
		model.addAttribute("c", cartItem);
		model.addAttribute("cartItem", true);
		return "index";
	}
	
	@RequestMapping("/cart/addToCart/{id}")
	public String addToCart(@PathVariable("id") int id, Model model){
		
		System.out.println("adding product to card with productId = "+id);
		 /* Product product=productService.getProductById(id);
		  CartItem cartItem=new CartItem();
		  //cartItem.setCartID(cartID);
		  cartItem.setProduct(product);
		  cartItem
		model.addAttribute("Cart", cart);
		model.addAttribute("addToCart", true);*/
		return "redirect:/cart";
		
	}
	
	/*@RequestMapping("/delete/{id}")
    public String deleteCartItem(@PathVariable("id") int id)
    {
    	CartItem cartItem=cartItemService.getCartitemById(id);
		cartItemService.deleteCartItem(cartItem);
    	return "redirect:/userProduct";
    }*/
	
	}
	