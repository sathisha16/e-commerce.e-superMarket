package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.UserDetails;
@Repository
@Transactional
public class UserDetailsDaoImpl implements UserDetailsDao {
	@Autowired
	SessionFactory sessionFactory;


	 
	public boolean insertUpdateUserDetail(UserDetails userdetails) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(userdetails);
		return true;
	}

	 
	public UserDetails getUserDetail(String username) {
		Session session=sessionFactory.openSession();
		UserDetails userdetails=(UserDetails)session.get(UserDetails.class,username);
		return userdetails;
	}

	 
	public void deleteUserDetail(UserDetails userdetails) {
		sessionFactory.getCurrentSession().delete(userdetails);
		}

	 
	public List<UserDetails> getUserDetailDetails() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from UserDetail");
		List<UserDetails> list=query.list();
		return list;
	}

}
