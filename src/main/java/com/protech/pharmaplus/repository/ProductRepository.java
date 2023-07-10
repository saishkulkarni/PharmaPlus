package com.protech.pharmaplus.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.protech.pharmaplus.dto.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> 
{

}
