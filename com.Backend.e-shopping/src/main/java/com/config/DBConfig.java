package com.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.DAO.CartDao;
import com.DAO.CartDaoImpl;
import com.DAO.CategoryDao;
import com.DAO.CategoryDaoImpl;
import com.DAO.PaymentDao;
import com.DAO.PaymetDaoImpl;
import com.DAO.ProductDao;
import com.DAO.ProductDaoImpl;
import com.DAO.SupplierDao;
import com.DAO.SupplierDaoImpl;
import com.DAO.UserDetailsDao;
import com.DAO.UserDetailsDaoImpl;
import com.model.Cart;
import com.model.Category;
import com.model.OrderDetails;
import com.model.Payment;
import com.model.Product;
import com.model.Supplier;
import com.model.UserDetails;

@Configuration
@EnableTransactionManagement
public class DBConfig {
	@Bean("dataSource")
	public DataSource getH2DataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();

		ds.setDriverClassName("org.h2.Driver");
		ds.setUrl("jdbc:h2:~/samp3");
		ds.setUsername("sa");
		ds.setPassword("");

		return ds;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory() {
		Properties properties = new Properties();
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.show_sql","true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(getH2DataSource());
		builder.addProperties(properties);
		builder.addAnnotatedClass(UserDetails.class);
		builder.addAnnotatedClass(Product.class);
		builder.addAnnotatedClass(Supplier.class);
		builder.addAnnotatedClass(Category.class);
		builder.addAnnotatedClass(Cart.class);
		builder.addAnnotatedClass(Payment.class);
		builder.addAnnotatedClass(OrderDetails.class);

		SessionFactory factory = builder.buildSessionFactory();
		return factory;
	}

	@Bean("tx")
	public HibernateTransactionManager getHibernateTransactionManager() {
		return new HibernateTransactionManager(getSessionFactory());
	}
	
	
	/*@Autowired
	@Bean("productDaoBean")
	public ProductDao getProductDAO() {
	ProductDaoImpl productimplobj=new ProductDaoImpl();
	return productimplobj;		
	}
	@Autowired
	@Bean("categoryDaoBean")
	public CategoryDao getCategoryDAO() {
		CategoryDaoImpl categoryimplobj=new CategoryDaoImpl();
		return categoryimplobj;
	}
 @Autowired
 @Bean("supplierDaoBean")
 public SupplierDao getSupplierDAO() {
	 
	 SupplierDaoImpl supplierimplobj = new SupplierDaoImpl();
	 return supplierimplobj;
 }

 @Autowired
 @Bean("cartDaoBean")
 public CartDao getCartDao() {
	 CartDaoImpl cartDaoImplobj=new CartDaoImpl();
	 return cartDaoImplobj;
	 
 }
 
 
 @Autowired
 @Bean("paymentDaoBean")
 public PaymentDao getPayment() {
	 PaymetDaoImpl paymentDaoImplobj=new PaymetDaoImpl();
	 return paymentDaoImplobj;
 }
 @Autowired
 @Bean("userDetailDaoBean")
 public UserDetailsDao getUserDetailDAO()
 {
 	System.out.println("-- UserDetailDAO Object Creation--");
 	UserDetailsDaoImpl userDetailsDaoImpl = new UserDetailsDaoImpl();
		return userDetailsDaoImpl;
 }
	*/

}
