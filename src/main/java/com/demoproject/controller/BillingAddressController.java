package com.demoproject.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.demoproject.model.BillingAddress;
import com.demoproject.model.Cart;
import com.demoproject.model.CartItem;
import com.demoproject.model.Customer;
import com.demoproject.model.Product;
import com.demoproject.model.ShippingAddress;
import com.demoproject.service.BillingAddressService;
import com.demoproject.service.CartItemService;
import com.demoproject.service.CartService;
import com.demoproject.service.CustomerService;
import com.demoproject.service.ProductService;
import com.demoproject.service.ShippingAddressService;

@Controller
public class BillingAddressController {

	@Autowired
	private BillingAddressService billingAddressService;
	@Autowired
	private ShippingAddressService shippingAddressService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private ProductService productService;

	
	@Autowired
	Cart cart;

	
	

	@RequestMapping (value="/billingAddress")
	public String billingAddressPage(Model m, @AuthenticationPrincipal User activeUser){
		List<BillingAddress> billingAddressList = billingAddressService.getBillingAddressByName(activeUser.getUsername());
		m.addAttribute("billingAddresspages",true);
		m.addAttribute("billingAddressList",billingAddressList);
		m.addAttribute("totalproducts",HomeController.count);
		for(BillingAddress b: billingAddressList)
		{
			System.out.println(b);
		}
		
		return "index";
	}
	
	@RequestMapping (value="/billingAddress/{billingId}", method=RequestMethod.POST)
	public String billingAddress(Model m, @ModelAttribute int billingId){
		System.out.println("going on billingAddress page");
		BillingAddress billingAddress = billingAddressService.getBillingAddressById(billingId);			
		m.addAttribute("billingAddress",billingAddress);
		m.addAttribute("billingAddress",true);
		m.addAttribute("totalproducts",HomeController.count);
		return "index";
	}
	
	@RequestMapping (value="/addNewBillingAddress")
	public String addNewBillingAddress(Model m )
	{
		BillingAddress billingAddress=new BillingAddress();
		m.addAttribute("billingAddress", billingAddress);
		m.addAttribute("addNewBillingAddress", "true");
		m.addAttribute("totalproducts",HomeController.count);
		System.out.println("Going to addNewBillingAddress page now"); 
		return "index";
	}

	 @RequestMapping(value = "/addNewBillingAddress", method = RequestMethod.POST)
	    public  String addBillingAddressPost(@Valid @ModelAttribute("billingAddress") BillingAddress billingAddress, BindingResult result,
	                                       Model model,@AuthenticationPrincipal User activeUser) {
		 System.out.println("inside addNewBillingAddress in   Controller");
	        if (result.hasErrors()) {
	        	System.out.println("going to addNewBillingAddress page after binding error");
	        	return "redirect:/addNewBillingAddress";
	        }
	       
	     System.out.println("addNewBillingAddress saved successfully");
	     billingAddress.setCustomerUsername(activeUser.getUsername()); 
	     Customer c=customerService.getCustomerByUsername(activeUser.getUsername());
	     billingAddress.setCustomerId(c.getCustomerId());
	     billingAddressService.addBillingAddress(billingAddress);
	     model.addAttribute("totalproducts",HomeController.count);
	        return "redirect:/billingAddress";
	        	       					
	    }

		
	@RequestMapping (value="/shippingAddress/{shippingId}", method=RequestMethod.POST)
	public String shippingAddress(Model m, @ModelAttribute int shippingId){
		System.out.println("going on billingAddress page");
		ShippingAddress shippingAddress = shippingAddressService.getShippingAddressById(shippingId);	
		m.addAttribute("shippingAddress",shippingAddress);
		m.addAttribute("shippingAddress",true);
		m.addAttribute("totalproducts",HomeController.count);
		return "index";
	}
	
	@RequestMapping (value="/shippingAddress")
	public String shippingAddressPage(Model m, @AuthenticationPrincipal User activeUser){
		List<ShippingAddress> shippingAddressList = shippingAddressService.getShippingAddressByName(activeUser.getUsername());
		
		m.addAttribute("shippingAddressPage",true);
		m.addAttribute("shippingAddressList",shippingAddressList);
		m.addAttribute("totalproducts",HomeController.count);
		
		for(ShippingAddress sa: shippingAddressList)
		{
			System.out.println(sa);
		}
		
		return "index";
	}
	
	@RequestMapping (value="/addNewShippingAddress")
	public String addNewShippingAddress(Model m )
	{
		ShippingAddress shippingAddress=new ShippingAddress();
		m.addAttribute("shippingAddress", shippingAddress);
		m.addAttribute("addNewShippingAddress", "true");
		m.addAttribute("totalproducts",HomeController.count);
		System.out.println("Going to addNewShippingAddress page now"); 
		return "index";
	}

	 @RequestMapping(value = "/addNewShippingAddress", method = RequestMethod.POST)
	    public  String addProductPost(@Valid @ModelAttribute("shippingAddress") ShippingAddress shippingAddress, BindingResult result,
	                                       Model model,@AuthenticationPrincipal User activeUser) {
		 System.out.println("inside addNewShippingAddress in   Controller");
	        if (result.hasErrors()) {
	        	System.out.println("going to addNewShippingAddress page after binding error");
	        	return "redirect:/addNewShippingAddress";
	        }
	       
	     System.out.println("addNewShippingAddress saved successfully");
	     shippingAddress.setCustomerUsername(activeUser.getUsername()); 
	     Customer c=customerService.getCustomerByUsername(activeUser.getUsername());
	     shippingAddress.setCustomerId(c.getCustomerId());
	     shippingAddressService.addShippingAddress(shippingAddress);
	     model.addAttribute("totalproducts",HomeController.count);
	        return "redirect:/shippingAddress";
	        	       					
	    }

		@RequestMapping("/paymentDetails")
		public String checkout(Model model)
		{
			model.addAttribute("msg", "Wait for the demo on web-flow");
			model.addAttribute("payment",true);
			return "index";
		}

	
		@RequestMapping ("/receipt")
		public String receipt(Model model,@AuthenticationPrincipal User activeUser){
			System.out.println("going on receipt page");	
			model.addAttribute("username", activeUser.getUsername());
			model.addAttribute("receipt", true);
			model.addAttribute("totalproducts",HomeController.count);
			
			 
			Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

				List<CartItem> list = cartItemService.getMyCartItems(customer.getCartId());

				List<Product> productInCartDetails = new ArrayList<Product>();
					Cart cart = cartService.getCart(customer.getCustomerId());
					double subTotal = 0,delivery=49.99;
					int totalItem = 0;
					for (CartItem c : list) {

						totalItem += c.getQuantity();
						subTotal += c.getTotalPrice();

						Product productDetails = productService.getProductById(c.getProductId());
						productDetails.setStock(c.getQuantity());
						productDetails.setPrice((int) (c.getTotalPrice() / c.getQuantity()));
						productDetails.setBrand(Double.toString(c.getTotalPrice()));
						productInCartDetails.add(productDetails);

					}
                 	
					model.addAttribute("cartItems", list);
					model.addAttribute("subtotal", subTotal);
					model.addAttribute("delivery", delivery);
					model.addAttribute("totalItem", totalItem);
					model.addAttribute("grandtotal", cart.getGrandTotal());
					model.addAttribute("productInCart", productInCartDetails);
					model.addAttribute("totalproducts",HomeController.count);
				
					List<BillingAddress> billingAddress=billingAddressService.getBillingAddressByName(customer.getCustomerName());
					List<ShippingAddress> shippingAddress=shippingAddressService.getShippingAddressByName(customer.getCustomerName());
					
					model.addAttribute("b", billingAddress.get(0));
					model.addAttribute("sa", shippingAddress.get(0));
					
					DateFormat dateFormat = new SimpleDateFormat("HH:mm dd/MM/yyyy");
					Date date = new Date();
					model.addAttribute("date",dateFormat.format(date)); //2016/11/16 12:08:43
					System.out.println("Date on receipt is : "+dateFormat.format(date));

					
			return "index";
		}
}
