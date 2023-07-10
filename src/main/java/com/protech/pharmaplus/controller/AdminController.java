package com.protech.pharmaplus.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.protech.pharmaplus.dto.Product;
import com.protech.pharmaplus.service.AdminService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;

	@GetMapping("/login")
	public String gotoAdminLogin() {
		return "AdminLogin";
	}

	@PostMapping("/login")
	public String login(@RequestParam String user, @RequestParam String pass, HttpSession session, ModelMap model) {
		return adminService.login(user, pass, session, model);
	}

	@GetMapping("/home")
	public String gotoHome() {
		return "AdminHome";
	}

	@GetMapping("/insert")
	public String adminInsert(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			return "AdminInsert";
		}
	}

	@GetMapping("/update")
	public String adminUpdate(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			return "AdminUpdate";
		}
	}

	@GetMapping("/delete")
	public String admindelete(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			return "AdminDelete";
		}
	}

	@PostMapping("/insert")
	public String insertProduct(@ModelAttribute Product product, @RequestParam MultipartFile pic, ModelMap model)
			throws IOException {
		return adminService.insert(product, pic, model);
	}

	@PostMapping("/update")
	public String updateProduct(@ModelAttribute Product product, @RequestParam MultipartFile pic, ModelMap model)
			throws IOException {
		return adminService.update(product, pic, model);
	}

	@PostMapping("/delete")
	public String deleteProduct(@RequestParam int id, ModelMap model) {
		return adminService.delete(id, model);
	}

	@GetMapping("/products")
	public String FetchAllProduct(HttpSession session, ModelMap model) {
		return adminService.fetchProducts(session, model);
	}

	@GetMapping("/customers")
	public String fetchAllCustomer(HttpSession session, ModelMap model) {
		return adminService.fetchCustomer(session, model);
	}
}
