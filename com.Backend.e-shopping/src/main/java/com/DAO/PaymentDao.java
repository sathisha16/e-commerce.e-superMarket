package com.DAO;

import com.model.Payment;

public interface PaymentDao {
	
	public boolean insertPaymentDetails(Payment payment);
	public Payment getPayment(int paymentid);

}
