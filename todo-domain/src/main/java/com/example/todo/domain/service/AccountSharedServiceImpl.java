package com.example.todo.domain.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.terasoluna.gfw.common.exception.ResourceNotFoundException;
import org.terasoluna.gfw.common.message.ResultMessage;
import org.terasoluna.gfw.common.message.ResultMessages;

import com.example.todo.domain.model.Account;
import com.example.todo.domain.repository.AccountRepository;

@Service
public class AccountSharedServiceImpl implements AccountSharedService {
    @Inject
    AccountRepository accountRepository;

    @Transactional(readOnly=true)
    @Override
    public Account findOne(String username) {
    	try {
    	Account account = accountRepository.findById(username).orElseThrow();
    	return account;
    	}catch (Exception e) {
    		ResultMessages messages = ResultMessages.error();
            messages.add(ResultMessage.fromText(
                    "The given account is not found! username=" + username));
            throw new ResourceNotFoundException(messages);
		}
        
    }
    
    @Transactional
    @Override
    public int update(Account account) {
    	return accountRepository.update(account);
        
    }

}
