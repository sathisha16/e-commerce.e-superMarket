package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class OrderConfirm {

	@Id
	@GeneratedValue
	private int orderconfirmid;
	private String username;
	private String cartDetails;
	public int getOrderconfirmid() {
		return orderconfirmid;
	}
	public void setOrderconfirmid(int orderconfirmid) {
		this.orderconfirmid = orderconfirmid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCartDetails() {
		return cartDetails;
	}
	public void setCartDetails(String cartDetails) {
		this.cartDetails = cartDetails;
	}
	
	
	
}
