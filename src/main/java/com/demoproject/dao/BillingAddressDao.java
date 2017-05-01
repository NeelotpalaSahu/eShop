package com.demoproject.dao;

import java.util.List;

import com.demoproject.model.BillingAddress;

public interface BillingAddressDao {

	void addBillingAddress(BillingAddress billingAddress);
	
	void updateBillingAddress(BillingAddress billingAddress);
	
	BillingAddress getBillingAddressById(int billingId);
	
	List<BillingAddress> getBillingAddressByName(String customerUsername);
	
}
