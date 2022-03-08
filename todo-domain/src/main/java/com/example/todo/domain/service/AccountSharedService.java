package com.example.todo.domain.service;

import com.example.todo.domain.model.Account;

public interface AccountSharedService {
    Account findOne(String username);
    
    int update(Account account);
}