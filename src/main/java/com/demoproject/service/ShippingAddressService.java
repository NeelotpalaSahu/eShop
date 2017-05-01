package com.demoproject.service;

import java.util.List;

import com.demoproject.model.ShippingAddress;

public interface ShippingAddressService {
	
void addShippingAddress(ShippingAddress shippingAddress);
	
	void updateShippingAddress(ShippingAddress shippingAddress);
	
	ShippingAddress getShippingAddressById(int shippingId);
	
	List<ShippingAddress> getShippingAddressByName(String customerUsername);

}
