package com.protech.pharmaplus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.protech.pharmaplus.dto.Customer;
import com.protech.pharmaplus.service.CustomerService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@GetMapping("/signup")
	public String gotoSignup() {
		return "CustomerSignup";
	}

	@GetMapping("/login")
	public String gotoLogin() {
		return "CustomerLogin";
	}

	@PostMapping("/signup")
	public String CustomerSignup(@ModelAttribute Customer customer, ModelMap model) {
		return customerService.signup(customer, model);
	}

	@PostMapping("/login")
	public String customerLogin(@RequestParam String user, @RequestParam String password, HttpSession session,
			ModelMap model) {
		return customerService.login(user, password, session, model);
	}

	@GetMapping("/products")
	public String fetchAllproducts(ModelMap model) {
		return customerService.fetchProducts(model);
	}

	@GetMapping("/addtocart")
	public String addToCart(HttpSession session, ModelMap model,@RequestParam int id) {
		return customerService.addToCart(session, model,id);
	}
	
	@GetMapping("/cart")
	public String viewCart(HttpSession session,ModelMap model)
	{
		return customerService.viewCart(session,model);
	}
}
