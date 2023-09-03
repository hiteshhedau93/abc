package com.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.login.dao.UserDao;
import com.login.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userdao;

	@Override
	public void createUser(User user) {
		userdao.createUser(user);

	}

	@Override
	public List<User> getAll() {

		return userdao.getAll();
	}

	@Override
	public User findByid(int id) {
		return userdao.findByid(id);

	}

	@Override
	public void deleteUser(int id) {
		userdao.deleteUser(id);

	}

	@Override
	public void update(User user) {
		userdao.update(user);

	}

}
