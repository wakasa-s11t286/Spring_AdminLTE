package com.example.todo.app.account;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.todo.domain.model.Account;
import com.example.todo.domain.service.AccountSharedService;
import com.example.todo.domain.service.userdetails.SampleUserDetails;



@Controller
@RequestMapping("account")
public class AccountController {
	
	@Inject
    AccountSharedService accountService;
	
	
	@ModelAttribute
    public Account setUpForm() {
        Account form = new Account();
        return form;
    }

	@GetMapping("/reference") 
    public String view(
            @AuthenticationPrincipal SampleUserDetails userDetails, Model model) {
		
        Account account = accountService.findOne(userDetails.getUsername());
        model.addAttribute(account);
        return "account/view";
    }
	
	@GetMapping("/edit") 
    public String edit(
            @AuthenticationPrincipal SampleUserDetails userDetails, Model model) {
		Account account = accountService.findOne(userDetails.getUsername());
        model.addAttribute(account);
        return "account/edit";
    }
	
	@RequestMapping(value = "/edit/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String editUpdate(
            @AuthenticationPrincipal SampleUserDetails userDetails, Model model, Account accout) {
		accountService.update(accout);
        return "account/edit";
    }
}