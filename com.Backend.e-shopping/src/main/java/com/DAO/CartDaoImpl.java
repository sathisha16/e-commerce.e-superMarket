package com.DAO;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;
import com.model.OrderConfirm;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;

	 
	public boolean addToCart(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cart);
		return true;
	}

	 
	public Boolean deleteCartItem(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(cart);
		return true;
	}

	 
	public List<Cart> getCartItems(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Cart c where c.username='"+username+"'");
		return query.getResultList();
	}

	 
	public Cart getCartItem(int cartitemid) {
		Session session = sessionFactory.getCurrentSession();
		Cart cart = (Cart) session.get(Cart.class, cartitemid);
		return cart;
	}

	 
	public boolean updateCartItem(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.update(cart);
		return true;
	}


	public boolean confirmCartItem(String username) {
		Session session=sessionFactory.getCurrentSession();
		List<Cart> cartlist=getCartItems(username);
		for(Cart c:cartlist) {
			
			c.setStatus("Y");
			updateCartItem(c);
		}
		return true;
	}


	public boolean saveOrder(OrderConfirm c) {
		sessionFactory.getCurrentSession().save(c);
		return true;
	}


	public String getOrder(String cartitem) {
		Query query=sessionFactory.getCurrentSession().createQuery("from OrderConfirm o where o.cartdetails='"+cartitem+"'");
		
		return ((OrderConfirm)query.getResultList().get(1)).getCartDetails();
	}

}
