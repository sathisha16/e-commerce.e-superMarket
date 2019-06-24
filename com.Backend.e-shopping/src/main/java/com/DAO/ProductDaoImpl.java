package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;

	 
	public boolean insertUpdateProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);


		return true;
	}

	 
	public boolean deleteProduct(Product product) {
		sessionFactory.getCurrentSession().delete(product);

		return true;
	}

	 
	public Product getProduct(int productid) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class,productid);
		System.out.println(product.getProductName());
		
		return product;
	}

	 
	public List<Product> getProductDetails()
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Product");
		@SuppressWarnings("unchecked")
		List<Product> list=query.list();
		return list;
	}

}
