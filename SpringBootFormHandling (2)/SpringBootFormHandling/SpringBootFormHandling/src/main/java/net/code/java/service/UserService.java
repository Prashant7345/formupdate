package net.code.java.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.code.java.repository.UserRepo;
import net.codejava.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserRepo userRepo;
	
	public User createUser(User user) {
		return userRepo.save(user); 	
	}
	
	public User getUserById(Long uID) {
		return userRepo.findById(uID).orElse(null);
	}
	
	public Iterable<User> getUsers() {
		return userRepo.findAll();
	}
	
}
