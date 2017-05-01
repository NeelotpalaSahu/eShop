package com.demoproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demoproject.dao.BillingAddressDao;
import com.demoproject.model.BillingAddress;
import com.demoproject.service.BillingAddressService;

@Service
public class BillingAddressServiceImpl implements BillingAddressService {
	
	@Autowired
	private BillingAddressDao billingAddressDao;

	public void addBillingAddress(BillingAddress billingAddress) {
		billingAddressDao.addBillingAddress(billingAddress);
		
	}

	public void updateBillingAddress(BillingAddress billingAddress) {
		billingAddressDao.updateBillingAddress(billingAddress);
		
	}

	public BillingAddress getBillingAddressById(int billingId) {
		
		return billingAddressDao.getBillingAddressById(billingId);
	}

	public List<BillingAddress> getBillingAddressByName(String customerUsername) {
		
		return billingAddressDao.getBillingAddressByName(customerUsername);
	}

}
