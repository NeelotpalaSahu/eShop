package com.demoproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demoproject.model.Product;
import com.demoproject.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/getAllProducts")
	public String product(Model m) {
		System.out.println("going to allProduct page");
		List<Product> allProd =productService.getAllProducts();
		
		for (Product product : allProd) {
			System.out.println("\nProduct name = "+product.getProductName());
		}
		
		m.addAttribute("allProd", allProd);
		m.addAttribute("allProduct", "true");
		return "index";
	}
	
	@RequestMapping("/userProduct")
	public String userProducts(Model m) {
		System.out.println("going to userProduct page");
		List<Product> allProd =productService.getAllProducts();
		
		for (Product product : allProd) {
			System.out.println("\nProduct name = "+product.getProductName());
		}
		
		m.addAttribute("allProd", allProd);
		m.addAttribute("userProduct", "true");
		return "index";
	}
	
	
	@RequestMapping("/addProduct")
	public String addProduct(Model m) {
		System.out.println("going to addProduct page");
		Product product=new Product();
		m.addAttribute("product", product);
		m.addAttribute("addProduct", "true") ;
		return "index";		
	}
	
	 @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
	                                       Model model) {
		 System.out.println("inside addProduct in product Controller");
	        if (result.hasErrors()) {
	        	System.out.println("going to addProduct page after binding error");
	              return "redirect:/addProduct";
	        }

	        productService.addProduct(product);
	        return "redirect:/getAllProducts";

	    }

	 @RequestMapping("/editProduct/{id}")
	    public String editproduct(@PathVariable("id") int id, Model model) {
	        System.out.println("getting product for editing in product controller and going to editProduct ");
			Product product=productService.getProductById(id);
			System.out.println("productname = "+product.getProductName());
	        model.addAttribute("product", product);
	        model.addAttribute("editProduct", true);
		return "index";		
		}
	/* 
	 @RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	    public String updateProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model) {
		 System.out.println("inside updateProduct in product Controller");
	        if (result.hasErrors()) {
	        	System.out.println("going to updateProduct page after binding error");
	              return "redirect:/getAllProducts";
	        }

	        productService.addProduct(product);
	        return "redirect:/getAllProducts";

	    }*/
	 	
	 @RequestMapping(value="/updateProduct", method=RequestMethod.POST)
	    public String updateProduct(@Valid @ModelAttribute("product") Product product,BindingResult result,
	    		                HttpServletRequest request)
	    {
	    	
			if(result.hasErrors()) {
				System.out.println("Binding error while updating product");
	            return "redirect:/getAllProducts";
	        }
	    	
			System.out.println("updating product in product controller");
			productService.updateProduct(product);
	    	return "redirect:/getAllProducts";
	    }
	 @RequestMapping("/delete/{id}")
	    public String deleteProduct(@PathVariable("id") int id)
	    {
	    	Product product=productService.getProductById(id);
			productService.deleteProduct(product);
	    	return "redirect:/getAllProducts";
	    }
	 
	 @RequestMapping("/productDetails/{id}")
	    public String productDetails(@PathVariable("id") int id, Model model) {
	        System.out.println("going to productDetails ");
			Product product=productService.getProductById(id);
			System.out.println("productname = "+product.getProductName());
	        model.addAttribute("p", product);
	        model.addAttribute("productDetails", true);
		return "index";		
		}
}
