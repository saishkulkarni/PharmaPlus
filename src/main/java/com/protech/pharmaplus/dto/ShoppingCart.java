package com.protech.pharmaplus.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
@Component
public class ShoppingCart {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
int id;

@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
List<Item> items;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public List<Item> getItems() {
	return items;
}

public void setItems(List<Item> items) {
	this.items = items;
}


}
