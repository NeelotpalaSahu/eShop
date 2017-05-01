package com.demoproject.dao;

import java.util.List;

import com.demoproject.model.ShippingAddress;

public interface ShippingAddressDao {

    void addShippingAddress(ShippingAddress shippingAddress);
	
	void updateShippingAddress(ShippingAddress shippingAddress);
	
	ShippingAddress getShippingAddressById(int shippingId);
	
	List<ShippingAddress> getShippingAddressByName(String customerUsername);
}
