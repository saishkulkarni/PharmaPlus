package com.protech.pharmaplus.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.protech.pharmaplus.dto.Customer;
import com.protech.pharmaplus.dto.Item;
import com.protech.pharmaplus.dto.Product;
import com.protech.pharmaplus.dto.ShoppingCart;
import com.protech.pharmaplus.repository.CustomerRepository;
import com.protech.pharmaplus.repository.ProductRepository;

import jakarta.servlet.http.HttpSession;

@Service
public class CustomerService {
	@Autowired
	CustomerRepository customerRepository;
	@Autowired
	ProductRepository productRepository;

	public String signup(Customer customer, ModelMap model) {
		Customer customer1 = null;
		try {
			long mobile = customer.getMno();
			customer1 = customerRepository.findByMno(mobile);
		} catch (NumberFormatException e) {
			String email = customer.getEmail();
			customer1 = customerRepository.findByEmail(email);
		}
		if (customer1 == null) {
			customerRepository.save(customer);
			model.put("pass", "Data Saved Succesfully");
			return "Home";
		} else {
			model.put("fail", "Email or Mobile Already Exists");
			return "AdminSignup";
		}

	}

	public String login(String user, String password, HttpSession session, ModelMap model) {
		Customer customer = null;
		try {
			long mobile = Long.parseLong(user);
			customer = customerRepository.findByMno(mobile);
		} catch (NumberFormatException e) {
			String email = user;
			customer = customerRepository.findByEmail(email);
		}
		if (customer == null) {
			model.put("fail", "Incorrect Email or Mobile");
			return "CustomerLogin";
		} else {
			if (customer.getPwd().equals(password)) {
				session.setAttribute("customer", customer);
				model.put("pass", "Login Success");
				return "Home";
			} else {
				model.put("fail", "Incorrect Password");
				return "CustomerLogin";
			}
		}
	}

	public String fetchProducts(ModelMap model) {
		List<Product> list = productRepository.findAll();
		if (list.isEmpty()) {
			model.put("fail", "data not found");
			return "Home";
		} else {
			model.put("list", list);
			return "CustomerProduct";
		}
	}

	public String addToCart(HttpSession session, ModelMap model, int id) {
		if (session.getAttribute("customer") == null) {
			model.put("fail", "First Login to Add to Cart");
			return "CustomerLogin";
		} else {

			Product product = productRepository.findById(id).orElse(null);
			Customer customer = (Customer) session.getAttribute("customer");

			ShoppingCart cart = customer.getCart();
			if (cart == null) {
				cart = new ShoppingCart();
			}

			List<Item> items = cart.getItems();

			if (items == null) {
				items = new ArrayList<Item>();
			}
			Item item = null;
			if (items.isEmpty()) {
				item = new Item();
				item.setImage(product.getImage());
				item.setName(product.getName());
				item.setPrice(product.getPrice());
				item.setQuantity(1);
				items.add(item);
			} else {
				boolean flag = false;
				for (Item item1 : items) {
					if (item1.getName().equals(product.getName())) {
						item1.setQuantity(item1.getQuantity() + 1);
						item1.setPrice(item1.getPrice() + product.getPrice());
						item=item1;
						flag = false;
						break;
					} else {
						flag = true;
					}
				}
				if (flag) {
					item.setImage(product.getImage());
					item.setName(product.getName());
					item.setPrice(product.getPrice());
					item.setQuantity(1);
					items.add(item);
				}

			}

			cart.setItems(items);
			customer.setCart(cart);

			customerRepository.save(customer);
			model.put("pass", "Added to Cart");
			List<Product> list = productRepository.findAll();
			if (list.isEmpty()) {
				model.put("fail", "data not found");
				return "Home";
			} else {
				model.put("list", list);
				return "CustomerProduct";
			}
		}
	}

	public String viewCart(HttpSession session, ModelMap model) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null || customer.getCart() == null || customer.getCart().getItems() == null
				|| customer.getCart().getItems().isEmpty()) {
			model.put("fail", "No Products in Cart");
			return "/Home";
		} else {
			List<Item> items=customer.getCart().getItems();
			model.put("list",items);
			return "CustomerCart";
		}
	}

}
