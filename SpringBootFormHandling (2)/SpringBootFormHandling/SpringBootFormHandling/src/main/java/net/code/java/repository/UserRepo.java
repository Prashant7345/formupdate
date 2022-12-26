package net.code.java.repository;

import org.springframework.data.repository.CrudRepository;

import net.codejava.entity.User;

public interface UserRepo extends CrudRepository<User, Long> {

}
