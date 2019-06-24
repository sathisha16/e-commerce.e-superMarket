package com.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Payment;

@Repository
@Transactional
public class PaymetDaoImpl implements PaymentDao {
	@Autowired
	SessionFactory sessionFactory;

	 
	public boolean insertPaymentDetails(Payment payment) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(payment);
		session.flush();
		return true;
	}

	 
	public Payment getPayment(int paymentid) {
		Session session = sessionFactory.getCurrentSession();
		Payment payment = (Payment) session.get(Payment.class, paymentid);
		return payment;
	}

}
