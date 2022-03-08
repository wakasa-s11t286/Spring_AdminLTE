package com.example.todo.domain.repository;

import java.util.List;
import java.util.Optional;


import com.example.todo.domain.model.Account;
import com.example.todo.domain.model.User;

public interface UserRepository {
   List<User> findUserList();
   
   User findById(String username);
    
    int update(User user);
    
    int create(User user);
}