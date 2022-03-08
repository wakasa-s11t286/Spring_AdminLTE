package com.example.todo.domain.repository;

import java.util.Optional;

import com.example.todo.domain.model.Account;

public interface AccountRepository {
    Optional<Account> findById(String username);
    
    int update(Account account);
}