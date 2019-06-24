package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Supplier;
@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	SessionFactory sessionFactory;
	 
	public boolean insertUpdateSupplier(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(supplier);
		return true;
	}

	 
	public boolean deleteSupplier(Supplier supplier) {

		sessionFactory.getCurrentSession().delete(supplier);

		return true;
	}

	 
	public Supplier getSupplier(int supplierid) {
		Session session=sessionFactory.getCurrentSession();
		Supplier category=(Supplier)session.get(Supplier.class,supplierid);
		return category;
	}

	 
	public List<Supplier> getSupplierDetails() {

		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Supplier");
		List<Supplier> list=query.list();
		
		return list;		
	}

}
