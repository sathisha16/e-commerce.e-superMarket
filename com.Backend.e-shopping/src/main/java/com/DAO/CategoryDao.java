package com.DAO;

import java.util.List;

import com.model.Category;

public interface CategoryDao {
	
	public boolean insertUpdateCategory(Category category);
	public Category getCategory(int categoryid);
	public boolean deleteCategory(Category category);
	public List<Category> getCategoryDetails();

	

}
