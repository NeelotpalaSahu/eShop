package com.demoproject.service;

import java.util.List;

import com.demoproject.model.BillingAddress;

public interface BillingAddressService {
	
    void addBillingAddress(BillingAddress billingAddress);
	
	void updateBillingAddress(BillingAddress billingAddress);
	
	BillingAddress getBillingAddressById(int billingId);
	
	List<BillingAddress> getBillingAddressByName(String customerUsername);

}
