package com.dairyproduct.dto;

public class Payment {
	 private int paymentId;
	    private int orderId;
	    private String paymentMode;
	    private String transactionId;
	    private String paymentStatus;
	    private String paymentDate;
	    
	    
		public Payment(int paymentId, int orderId, String paymentMode, String transactionId, String paymentStatus,
				String paymentDate) {
			super();
			this.paymentId = paymentId;
			this.orderId = orderId;
			this.paymentMode = paymentMode;
			this.transactionId = transactionId;
			this.paymentStatus = paymentStatus;
			this.paymentDate = paymentDate;
		}


		public int getPaymentId() {
			return paymentId;
		}


		public void setPaymentId(int paymentId) {
			this.paymentId = paymentId;
		}


		public int getOrderId() {
			return orderId;
		}


		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}


		public String getPaymentMode() {
			return paymentMode;
		}


		public void setPaymentMode(String paymentMode) {
			this.paymentMode = paymentMode;
		}


		public String getTransactionId() {
			return transactionId;
		}


		public void setTransactionId(String transactionId) {
			this.transactionId = transactionId;
		}


		public String getPaymentStatus() {
			return paymentStatus;
		}


		public void setPaymentStatus(String paymentStatus) {
			this.paymentStatus = paymentStatus;
		}


		public String getPaymentDate() {
			return paymentDate;
		}


		public void setPaymentDate(String paymentDate) {
			this.paymentDate = paymentDate;
		}


		@Override
		public String toString() {
			return "Payment [paymentId=" + paymentId + ", orderId=" + orderId + ", paymentMode=" + paymentMode
					+ ", transactionId=" + transactionId + ", paymentStatus=" + paymentStatus + ", paymentDate="
					+ paymentDate + "]";
		}
	    
		
	    
}
