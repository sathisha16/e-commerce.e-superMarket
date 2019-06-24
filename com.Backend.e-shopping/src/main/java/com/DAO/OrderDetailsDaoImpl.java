package com.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.OrderDetails;
@Repository
@Transactional
public class OrderDetailsDaoImpl implements OrderDetailsDao {
	@Autowired
	SessionFactory sessionFactory;

	public boolean insertOrderDetails(OrderDetails orderDetails) {
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(orderDetails);

		return true;
	}

	
	public OrderDetails getOrderDetails(String username) {
		Session session=sessionFactory.openSession();
		OrderDetails orderDetails=(OrderDetails)session.get(OrderDetails.class,username);
		return orderDetails;
	}

}
