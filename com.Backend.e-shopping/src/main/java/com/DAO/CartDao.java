package com.DAO;

import java.util.List;

import com.model.Cart;
import com.model.OrderConfirm;

public interface CartDao {
	
	public boolean addToCart(Cart cart);
	public Boolean deleteCartItem(Cart cart);
	public List<Cart> getCartItems(String username);
	public Cart getCartItem(int cartitemid);
	public boolean updateCartItem(Cart cart);
	
	public boolean confirmCartItem(String username);
	public  boolean saveOrder(OrderConfirm c);
	public String getOrder(String cartitem);
	
	}
