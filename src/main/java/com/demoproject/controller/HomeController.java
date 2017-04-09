package com.demoproject.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demoproject.model.Customer;
import com.demoproject.service.CustomerService;


@Controller
public class HomeController {

	@RequestMapping ("/")
	public String slash(Model m){
		System.out.println("going on index page");
	     m.addAttribute("getHome", "true");
		return "index";
	}
	
	/*@RequestMapping ("/login")
	public String login(Model m){
		System.out.println("going on index page");
	     m.addAttribute("getLogin", "true");
		return "index";
	}*/
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
	@RequestMapping ("/register")
	public String register(Model m){
		System.out.println("going on index page");
		Customer customer = new Customer();
	       
        m.addAttribute("customer", customer);
		m.addAttribute("getRegister","true");
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
    
    @Autowired
    private CustomerService customerService;

   

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

        return "login";

    }


}
