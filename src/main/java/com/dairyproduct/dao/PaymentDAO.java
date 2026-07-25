package com.dairyproduct.dao;

import java.util.List;

import com.dairyproduct.dto.Payment;

public interface PaymentDAO {

	void makePayment(Payment payment);

    void updatePayment(Payment payment);

    void deletePayment(int paymentId);

    Payment getPaymentById(int paymentId);

    Payment getPaymentByOrderId(int orderId);

    List<Payment> getAllPayments();

}
