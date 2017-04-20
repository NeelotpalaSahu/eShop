package com.demoproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.demoproject.model.CartItem;
import com.demoproject.model.Customer;
import com.demoproject.model.Product;
import com.demoproject.model.Users;
import com.demoproject.service.CartItemService;
import com.demoproject.service.CustomerService;
import com.demoproject.service.ProductService;

@Controller
public class CartItemController {

	@Autowired 
	private CartItemService cartItemService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService ;
	
	
	@RequestMapping(value = "/addToCart/{id}", method = RequestMethod.GET)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	 public void productDescription(@PathVariable("id") int id, Model model,@AuthenticationPrincipal User activeUser) {
        System.out.println("addToCart in  controller with productID "+id);
		Product product=productService.getProductById(id);
		System.out.println("Adding product to CartItem with productname = "+product.getProductName());
       
		Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
		CartItem cartItem;
		
		int f=1;
		try {
			List<CartItem> list=cartItemService.getMyCartItems(customer.getCartId());
		
			for(CartItem p:list)
			{
				if(p.getCartId()==customer.getCartId()&&p.getProductId()==id)
				{
					cartItem=cartItemService.getCartItemByProductId(id);
					cartItem.setQuantity(cartItem.getQuantity()+1);
					cartItem.setTotalPrice(cartItem.getQuantity()*product.getPrice());
					cartItemService.updateCartItem(cartItem);
					f=0;
					break;
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(f==1)
		{
		cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setCartId(customer.getCartId());
		cartItem.setProductId(id);
		cartItem.setTotalPrice(cartItem.getQuantity()*product.getPrice());
        cartItemService.addCartItem(cartItem);
		
		}
		
		System.out.println("CartItem inserted");
	}
	
	@RequestMapping(value = "/deleteCartItem/{id}", method = RequestMethod.GET)
	public String deleteProductFromCart(@PathVariable(value = "id") int id) {
      
		 System.out.println("delete cartItem in  controller with productID "+id);
			
		 cartItemService.deleteCartItem(cartItemService.getCartItemByProductId(id));
      
			 System.out.println("going to cart again");
				
        return "redirect:/cart"; 
	}
	
}
