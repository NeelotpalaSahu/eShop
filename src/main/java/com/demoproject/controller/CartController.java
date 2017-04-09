package com.demoproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demoproject.model.Cart;
import com.demoproject.service.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;
	
	
	@RequestMapping("/cart/getCartById")
	public String getCartById(@PathVariable("id") int id, Model model){
		Cart cart=cartService.getCartById(id);
		model.addAttribute("Cart", cart);
		model.addAttribute("cart", true);
		return "index";
	}
	
	@RequestMapping("/addToCart/{pid}")
	public String addToCart(@PathVariable("pid") int pid, Model model){
		System.out.println("adding product to card with productId = "+pid);
		
	
		return "redirect:/userProduct";
		
	}
	
}
