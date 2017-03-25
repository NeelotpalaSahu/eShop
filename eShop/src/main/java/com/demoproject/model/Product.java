package com.demoproject.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="product")
public class Product implements Serializable {

	private static final long serialVersionUID = 5741193217559002430L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productId;	
	@NotEmpty(message="Producct name is mandatory")
	private String productName;	
	//@NotEmpty(message="Description is mandatory")
	private String description;	
	@Min(value=10)
	private double price;	
	@Min(value=2)
	private int stock;	
	
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	private String brand;
	
	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int quantity) {
		this.stock = quantity;
	}

	
}
