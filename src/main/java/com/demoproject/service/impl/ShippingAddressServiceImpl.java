package com.demoproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demoproject.dao.ShippingAddressDao;
import com.demoproject.model.ShippingAddress;
import com.demoproject.service.ShippingAddressService;

@Service
public class ShippingAddressServiceImpl implements ShippingAddressService {
	
	@Autowired
	private ShippingAddressDao shippingAddressDao;

	public void addShippingAddress(ShippingAddress shippingAddress) {
		// TODO Auto-generated method stub
		shippingAddressDao.addShippingAddress(shippingAddress);
	}

	public void updateShippingAddress(ShippingAddress shippingAddress) {
		// TODO Auto-generated method stub
		shippingAddressDao.updateShippingAddress(shippingAddress);
	}

	public ShippingAddress getShippingAddressById(int shippingId) {
		// TODO Auto-generated method stub
		return shippingAddressDao.getShippingAddressById(shippingId);
	}

	public List<ShippingAddress> getShippingAddressByName(String customerUsername) {
		// TODO Auto-generated method stub
		return shippingAddressDao.getShippingAddressByName(customerUsername);
	}

}
