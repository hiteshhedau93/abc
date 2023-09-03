package com.login.service;

import java.util.List;

import com.login.entity.User;

public interface UserService {

	
	public void createUser(User user);

	
	public List<User> getAll();

	User findByid(int id);


	public void  deleteUser(int id);


	public void update(User user);


	
	
	
}
