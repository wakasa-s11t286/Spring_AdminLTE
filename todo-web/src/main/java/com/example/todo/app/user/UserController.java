package com.example.todo.app.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.encrypt.Encryptors;
import org.springframework.security.crypto.encrypt.TextEncryptor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.todo.domain.model.Account;
import com.example.todo.domain.model.User;
import com.example.todo.domain.service.AccountSharedService;
import com.example.todo.domain.service.UserSharedService;
import com.example.todo.domain.service.userdetails.SampleUserDetails;


@Controller
@RequestMapping("user")
public class UserController {
	
	@Inject
    UserSharedService userService;
	
	@Inject
    PasswordEncoder passwordEncoder;
	
	@ModelAttribute
    public User setUpForm() {
        User form = new User();
        return form;
    }
	

	@GetMapping("/list") 
    public String view(
            @AuthenticationPrincipal SampleUserDetails userDetails, Model model) {
		List<User> userList = userService.findUserList();
        model.addAttribute("userList",userList);
        return "user/list";
    }
	
	@GetMapping("/create") 
    public String createView(
            @AuthenticationPrincipal SampleUserDetails userDetails, Model model) {
		//User user = userService.findOne(userDetails.getUsername());
		User user = setUpForm();
        model.addAttribute(user);
        return "user/create";
    }
	
	@RequestMapping(value = "/ceate/do", method = {RequestMethod.GET, RequestMethod.POST})
    public String ceate(@AuthenticationPrincipal SampleUserDetails userDetails, Model model, User user) {
		//パスワードをハッシュ化し、設定
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userService.create(user);
        model.addAttribute(user);
        return view(userDetails,model);
    }
	
	
}