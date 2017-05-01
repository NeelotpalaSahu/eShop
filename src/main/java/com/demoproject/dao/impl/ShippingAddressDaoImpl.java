package com.demoproject.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demoproject.dao.ShippingAddressDao;
import com.demoproject.model.BillingAddress;
import com.demoproject.model.ShippingAddress;

@Repository
@Transactional
public class ShippingAddressDaoImpl implements ShippingAddressDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addShippingAddress(ShippingAddress shippingAddress) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		try{
		session.save(shippingAddress);
		System.out.println("Shipping address save successfully");
		} catch (HibernateException e) {
			System.out.println("Error while saving shipping address");
			e.printStackTrace();
		}
	}

	public void updateShippingAddress(ShippingAddress shippingAddress) {
		// TODO Auto-generated method stub
		System.out.println("Got shipping address with id "+shippingAddress.getShippingId());
		Session session=sessionFactory.getCurrentSession();
		try {
			session.update(shippingAddress);
			session.flush();			
		} catch (HibernateException e) {
			System.out.println("error while updating  shippng address in ShippingAddressDaoImpl");
			e.printStackTrace();
			session.flush();
		}
	}

	public ShippingAddress getShippingAddressById(int shippingId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		ShippingAddress shippingAddress = (ShippingAddress)session.get(ShippingAddress.class, shippingId);
		return shippingAddress;	
	}

	public List<ShippingAddress> getShippingAddressByName(String customerUsername) {
		System.out.println("Getting ShippingAddress for "+customerUsername);
		 Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from ShippingAddress where customerUsername = '"+customerUsername+"'" );
	       List<ShippingAddress>  shippingAddressList=query.list();
	       System.out.println("Got "+shippingAddressList.size()+" addresses");
	       return shippingAddressList;
	}



}
