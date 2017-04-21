package com.demoproject.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.demoproject.model.Product;
import com.demoproject.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@RequestMapping("/admin/getAllProducts")
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
	
	@RequestMapping(value="/userProduct/{brand}", method=RequestMethod.GET)
	public String userProductsByBrand(Model m, @PathVariable("brand") String brand) {
		System.out.println("going to userProduct page by Brand" + brand);
		
		List<Product> allProd =productService.getAllProducts();
		
		for (Product product : allProd) {
			System.out.println("\nProduct name = "+product.getProductName());
		}
		
		m.addAttribute("allProd", allProd);
		m.addAttribute("userProduct", "true");
		m.addAttribute("brand", brand);
		return "index";
	}
	
	
	@RequestMapping("/admin/addProduct")
	public String addProduct(Model m) {
		System.out.println("going to addProduct page");
		Product product=new Product();
		m.addAttribute("product", product);
		m.addAttribute("addProduct", "true") ;
		return "index";		
	}
	
	 @RequestMapping(value = "/admin/addProduct", method = RequestMethod.POST)
	    public  String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
	                                       Model model, @RequestParam("file") MultipartFile file) {
		 System.out.println("inside addProduct in product Controller");
	        if (result.hasErrors()) {
	        	System.out.println("going to addProduct page after binding error");
	        	return "redirect:/admin/addProduct";
	        }
	       
	        if (!file.isEmpty()) {
				try {
					System.out.println("file is empty");
					byte[] bytes = file.getBytes();
					String rootPath = "F:/new workspace/eShop/src/main/WEB-INF/resources/newImages";
					
					File dir = new File(rootPath + File.separator + file);
					if (!dir.exists())
						dir.mkdirs();
					
					File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

					System.out.println("image saved successfully");
					product.setImage(file.getOriginalFilename());
			           } catch (Exception e) {
					System.out.println("going to addProduct page as failed to store image");
					return "redirect:/admin/addProduct";
					}
	        }
	        else
	        {
	        	System.out.println("going to addProduct page as image is empty");
	        	return "redirect:/admin/addProduct";
		        
	        }
	        productService.addProduct(product);
	        System.out.println("product saved successfully");
	        
	        return "redirect:/admin/getAllProducts";
	        	       					
	    }

	 @RequestMapping("/admin/editProduct/{id}")
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
	 	
	 @RequestMapping(value="/admin/updateProduct", method=RequestMethod.POST)
	    public String updateProduct(@Valid @ModelAttribute("product") Product product,BindingResult result,
	    		                HttpServletRequest request)
	    {
	    	
			if(result.hasErrors()) {
				System.out.println("Binding error while updating product");
	            return "redirect:/getAllProducts";
	        }
	    	
			System.out.println("updating product in product controller");
			productService.updateProduct(product);
	    	return "redirect:/admin/getAllProducts";
	    }
	 @RequestMapping("/admin/delete/{id}")
	    public String deleteProduct(@PathVariable("id") int id)
	    {
	    	Product product=productService.getProductById(id);
			productService.deleteProduct(product);
	    	return "redirect:/admin/getAllProducts";
	    }
	 
	 @RequestMapping("/customer/productDescription/{id}")
	    public String productDescription(@PathVariable("id") int id, Model model) {
	        System.out.println("going to product description page ");
			Product product=productService.getProductById(id);
			System.out.println("productname = "+product.getProductName());
			model.addAttribute("p", product);
	        model.addAttribute("productDescription", true);
		return "index";		
		}
	 
	 @RequestMapping("/customer/buyProduct/{id}")
	    public String buyProduct(@PathVariable("id") int id, Model model) {
	        System.out.println("going to buy page ");
			Product product=productService.getProductById(id);
			System.out.println("productname = "+product.getProductName());
			model.addAttribute("p", product);
	        model.addAttribute("buyProduct", true);
		return "index";		
		}
	 
	 @RequestMapping(value="/productPagination", method=RequestMethod.GET)
	 public String productPagination(@PathVariable("id") int id, Model model, HttpServletRequest request) {       
			Product product=productService.getProductById(id);		
			model.addAttribute("p", product);
	        model.addAttribute("pagination", true);
		return "index";		
		}
}
