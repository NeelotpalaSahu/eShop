package com.demoproject.controller;


import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.demoproject.model.CartItem;
import com.demoproject.model.Customer;
import com.demoproject.model.Product;
import com.demoproject.service.CartItemService;
import com.demoproject.service.CustomerService;
import com.demoproject.service.ProductService;


@Controller
public class HomeController {
	
	  @Autowired
	    private CustomerService customerService;
	  
	  @Autowired
	  private CartItemService cartItemService;
	  
	  @Autowired
	  private ProductService productService;
	  
	  Customer customer;
	
	  public static int count=0;
	  
	@RequestMapping ("/")
	public String slash(Model m,@AuthenticationPrincipal User activeUser){
		try{
			System.out.println("count home1");
			if(activeUser!=null){
				customer=customerService.getCustomerByUsername(activeUser.getUsername());
				count=cartItemService.getTotalProducts(customer.getCartId());
				m.addAttribute("totalproducts",count);
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		System.out.println("going on index page");
	     m.addAttribute("getHome", "true");
		return "index";
	}
	
	@RequestMapping ("/aboutUs")
	public String aboutUs(Model m){
		System.out.println("going on index page");
		m.addAttribute("getAboutUs", "true");
		return "index";
	}
	@RequestMapping ("/contactUs")
	public String contactUs(Model m){
		System.out.println("going on index page");
		m.addAttribute("getContactUs", "true");
		return "index";
	}
	
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
            model.addAttribute("error", "Invalid username and password");
        }

        if(logout!=null) {
            model.addAttribute("msg", "You have been logged out successfully.");
        }
        model.addAttribute("getLogin","true");
        return "index";
    }
    
	@RequestMapping ("/register")
	public String register(Model m){
		System.out.println("going on index page");
		Customer customer = new Customer();
	       
        m.addAttribute("customer", customer);
		m.addAttribute("getRegister","true");
		return "index";
	}  

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
                                       Model model) {

        if (result.hasErrors()) {
            return "register";
        }

        List<Customer> customerList=customerService.getAllCustomers();

        for (int i=0; i< customerList.size(); i++) {
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "register";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists");

                return "register";
            }
        }

        customer.setEnabled(true);
        customerService.addCustomer(customer);

        return "redirect:/login";

    }
    

    @RequestMapping ("/sendMailPage")
	public String sendMail(Model m){
		System.out.println("going on mail page");
		
		List<Product> allProd =productService.getAllProducts();
        for (Product product : allProd) {
			System.out.println("\nProduct name = "+product.getProductName());
		}
        
        m.addAttribute("allProd", allProd);
        
		m.addAttribute("mail", "true");
		m.addAttribute("status", "click on link below to send mail");
	    
		return "index";
	}
    
   
		
	    @RequestMapping("/sendMail")
	    public  String sendFromGmail(Model model, @RequestParam("mailId") String mailId, @RequestParam("productName") String productName) {
		
	    	System.out.println("Got product "+productName+" to promote through mail in controller");
	        
	    	Product product=productService.getProductByName(productName);
	    	
	    	System.out.println("Inside sendFromGmail with emailId = "+mailId);
	    	String from = "neelotpala92@gmail.com";
		    String pass = "gangamansi";
		    String[] to = {  mailId };
		    String subject = "Trying to send email";
    	    String body = "Hi sir/m'am, \n\nWe have launched new product on eShop.\n\nProductName : "+product.getProductName()+"\nProductDeccription : "+product.getDescription()+"\nProductPrice : "+product.getPrice();                                       
			
	    Properties prop=System.getProperties();
		String host="smtp.gmail.com";
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.ssl.trust", host);
	    prop.put("mail.smtp.user", from);
	    prop.put("mail.smtp.password", pass);
	    prop.put("mail.smtp.port", "587");
	    prop.put("mail.smtp.auth", "true");
	    
	    Session session = Session.getDefaultInstance(prop);
	    MimeMessage message = new MimeMessage(session);
	    
	    try {
	    message.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];

        for( int i = 0; i < to.length; i++ ) {
            toAddress[i] = new InternetAddress(to[i]);
        }
        
        for( int i = 0; i < toAddress.length; i++) {
            message.addRecipient(Message.RecipientType.TO, toAddress[i]);
        }
        
        message.setSubject(subject);
        message.setText(body);
        
        Transport transport = session.getTransport("smtp");

        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
        model.addAttribute("status", "mail sent successfully");
	    
	    } catch (AddressException ae) {
	    	 model.addAttribute("status", "error while sending mail due to AddressException");
	  	   
	    	ae.printStackTrace();
	    	
	    }
	    catch (MessagingException me) {
	    	model.addAttribute("status", "error while sending mail due to MessagingException");
	        me.printStackTrace();
	    }
	 
	    model.addAttribute("mail", true);
	    return "index";
	}
	    
	    
	    public static int getTotalProducts(){
	    	return count;
	    }
	    
		
}
