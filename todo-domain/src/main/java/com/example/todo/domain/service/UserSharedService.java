package com.example.todo.domain.service;

import java.util.List;


import com.example.todo.domain.model.Account;
import com.example.todo.domain.model.User;

public interface UserSharedService {
    List<User> findUserList();
    
    User findOne(String username);
    
    int update(User user);
    
    int create(User user);
}