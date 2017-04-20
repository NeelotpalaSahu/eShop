package com.demoproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demoproject.service.CartService;
import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;
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
				model.addAttribute("msg", "No item found in your cart");
				System.out.println("Going to cart page");
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
				cart.setGrandTotal(subTotal + 10.0); // subtotal + tax
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
				return "index";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Going to cart page");
			model.addAttribute("msg", "No item found in your cart");
			model.addAttribute("show", false);
			model.addAttribute("cart", true);
			return "index";
		}
	}
	
	@RequestMapping("/cart/paymentDetails")
	public String checkout(Model model)
	{
		model.addAttribute("msg", "Wait for the demo on web-flow");
		model.addAttribute("payment",true);
		return "index";
	}

}
