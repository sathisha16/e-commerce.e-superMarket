package com.DAO;

import java.util.List;

import com.model.Product;

public interface ProductDao {
	
	public boolean insertUpdateProduct(Product product);
	public boolean deleteProduct(Product product);
	public Product getProduct(int productid);
	public List<Product> getProductDetails();
}
