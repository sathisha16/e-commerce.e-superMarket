package com.DAO;

import java.util.List;

import com.model.Supplier;

public interface SupplierDao {
	
	public boolean insertUpdateSupplier(Supplier supplier);
	public boolean deleteSupplier(Supplier supplier);
	public Supplier getSupplier(int supplierid);
	public List<Supplier> getSupplierDetails();
	

}
