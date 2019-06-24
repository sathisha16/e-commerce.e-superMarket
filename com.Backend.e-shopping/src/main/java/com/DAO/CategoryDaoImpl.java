package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Category;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	SessionFactory sessionFactory;

	 
	public boolean insertUpdateCategory(Category category) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(category);
		return true;
	}

	 
	public Category getCategory(int categoryid) {
		Session session = sessionFactory.getCurrentSession();
		Category category = (Category) session.get(Category.class, categoryid);

		return category;
	}

	 
	public boolean deleteCategory(Category category) {
		sessionFactory.getCurrentSession().delete(category);

		return true;
	}

	 
	public List<Category> getCategoryDetails() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Category");
		List<Category> list = query.list();
		return list;
	}

}
