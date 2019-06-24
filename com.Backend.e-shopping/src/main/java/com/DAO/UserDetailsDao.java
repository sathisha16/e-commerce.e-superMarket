package com.DAO;

import java.util.List;

import com.model.UserDetails;

public interface UserDetailsDao {
	public boolean insertUpdateUserDetail(UserDetails userdetails);
	public UserDetails getUserDetail(String username);
	public void deleteUserDetail(UserDetails userdetails);
	public List<UserDetails> getUserDetailDetails();


	

	

}
