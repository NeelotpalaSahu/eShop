package com.demoproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demoproject.service.CartService;
import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;
import com.demoproject.controller.HomeController;
import com.demoproject.model.Customer;
import com.demoproject.model.Product;
import com.demoproject.service.CartItemService;
import com.demoproject.service.CustomerService;
import com.demoproject.service.ProductService;

@Controller
public class CartController {

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	Cart cart;

	@Autowired
	CartService cartService;

	
	@RequestMapping("/cart")
	public String getAllproducts(Model model, @AuthenticationPrincipal User activeUser) {
		System.out.println("fetching cartItem from CartItem controller");

		Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

		try {
			List<CartItem> list = cartItemService.getMyCartItems(customer.getCartId());

			if (list.isEmpty()) {
				model.addAttribute("msg", "No item found in the cart1");
				System.out.println("Going to cart page");
				model.addAttribute("hide", true);
				model.addAttribute("cart", true);
				return "index";
			} else {
				ArrayList<Integer> productIdlist = new ArrayList<Integer>();
				List<Product> productInCartDetails = new ArrayList<Product>();
				Cart cart = cartService.getCart(customer.getCustomerId());
				double subTotal = 0;
				int totalItem = 0;
				for (CartItem c : list) {

					productIdlist.add(c.getProductId());
					totalItem += c.getQuantity();
					subTotal += c.getTotalPrice();

					Product productDetails = productService.getProductById(c.getProductId());
					productDetails.setStock(c.getQuantity());
					productDetails.setPrice((int) (c.getTotalPrice() / c.getQuantity()));
					productDetails.setBrand(Double.toString(c.getTotalPrice()));
					productInCartDetails.add(productDetails);

				}

				
				
				System.out.println("subtotal = " + subTotal);
				cart.setGrandTotal(subTotal + 10.0); // subtotal + Estimated shipping
				cartService.updateCart(cart);
				System.out.println("grand total  = " + cart.getGrandTotal());

				model.addAttribute("cartItems", list);
				model.addAttribute("msg", "CartItems present in the cart of " + activeUser.getUsername());
				model.addAttribute("subtotal", subTotal);
				model.addAttribute("totalItem", totalItem);
				model.addAttribute("grandtotal", cart.getGrandTotal());
				model.addAttribute("show", true);
				model.addAttribute("productInCart", productInCartDetails);
				
				System.out.println("Going to cart page");
				model.addAttribute("cart", true);
				model.addAttribute("totalproducts",HomeController.count);
				return "index";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Going to cart page");
			model.addAttribute("msg", "No item found in your cart2");
			model.addAttribute("show", false);
			model.addAttribute("hide", true);
			model.addAttribute("cart", true);
			return "index";
		}
	}
	
	
	@RequestMapping(value = "/deleteCart", method = RequestMethod.GET)
	public String deleteAllCartItemsById( @AuthenticationPrincipal User activeUser) {
      
		//get username of current logged in user
		 //then get customer object by the username
		 //then get the cartID from the customer object
		 //then pass cartID to deleteAllItemsFrom Cart 
			
		 Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
		
		 cartItemService.deleteAllCartItems(customer.getCartId());
      
			 System.out.println("going to cart again");
				
        return "redirect:/cart"; 
	}
	
}
