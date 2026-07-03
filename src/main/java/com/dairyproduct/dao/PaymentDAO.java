package com.dairyproduct.dao;

import com.dairyproduct.dto.Payment;

public interface PaymentDAO {

	boolean makePayment(Payment payment);
	
	Payment getPaymentByOrderId(int orderId);
	
	boolean updatePaymentStatus(int paymentId, String status);
}
