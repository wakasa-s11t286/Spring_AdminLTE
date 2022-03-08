package com.example.todo.domain.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.terasoluna.gfw.common.exception.ResourceNotFoundException;
import org.terasoluna.gfw.common.message.ResultMessage;
import org.terasoluna.gfw.common.message.ResultMessages;

import com.example.todo.domain.model.Account;
import com.example.todo.domain.model.User;
import com.example.todo.domain.repository.AccountRepository;
import com.example.todo.domain.repository.UserRepository;

@Service
public class UserSharedServiceImpl implements UserSharedService {
    @Inject
    UserRepository userRepository;


    @Transactional(readOnly=true)
	@Override
	public List<User> findUserList() {
    	return userRepository.findUserList();
	}

	@Override
	@Transactional
	public int update(User user) {
		return userRepository.update(user);
	}

	@Override
	@Transactional
	public int create(User user) {
		return userRepository.create(user);
	}

	@Override
	public User findOne(String username) {
		return userRepository.findById(username);
	}

}
