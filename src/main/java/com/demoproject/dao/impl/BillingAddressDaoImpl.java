package com.demoproject.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demoproject.dao.BillingAddressDao;
import com.demoproject.model.BillingAddress;
import com.demoproject.model.Product;

@Repository
@Transactional
public class BillingAddressDaoImpl implements BillingAddressDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addBillingAddress(BillingAddress billingAddress) {
		
		Session session = sessionFactory.getCurrentSession();
		try{
		session.saveOrUpdate(billingAddress);
		System.out.println("Billing address save successfully");
		} catch (HibernateException e) {
			System.out.println("Error while saving billing address");
			e.printStackTrace();
		}
	}

	public BillingAddress getBillingAddressById(int billingId) {
		Session session=sessionFactory.getCurrentSession();
		BillingAddress billingAddress = (BillingAddress)session.get(BillingAddress.class, billingId);
		return billingAddress;		
	}

	public List<BillingAddress> getBillingAddressByName(String customerUsername) {
		System.out.println("Getting BillingAddress for "+customerUsername);
		 Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from BillingAddress where customerUsername = '"+customerUsername+"'" );
	       List<BillingAddress>  billingAddressList=query.list();
	       System.out.println("Got "+billingAddressList.size()+" addresses");
	       return billingAddressList;
	}

	public void updateBillingAddress(BillingAddress billingAddress) {
		System.out.println("Got billing address with id "+billingAddress.getBillingId());
		Session session=sessionFactory.getCurrentSession();
		try {
			session.update(billingAddress);
			session.flush();			
		} catch (HibernateException e) {
			System.out.println("error while updating  billing address in BillingAddressDaoImpl");
			e.printStackTrace();
			session.flush();
		}
		
	}

}
