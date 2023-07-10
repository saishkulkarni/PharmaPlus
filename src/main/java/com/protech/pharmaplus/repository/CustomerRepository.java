package com.protech.pharmaplus.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.protech.pharmaplus.dto.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	public Customer findByEmail(String email);
	
	public Customer findByMno(long mobile);
}
